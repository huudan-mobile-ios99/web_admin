// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../constants/enum.dart';
import '../../../../utils/extensions/custom_extensions.dart';
import '../../../settings/presentation/reader/widgets/reader_mode_tile/reader_mode_tile.dart';
import '../../data/manga_book_repository.dart';
import '../../domain/chapter_patch/chapter_put_model.dart';
import '../manga_details/controller/manga_details_controller.dart';
import 'controller/reader_controller.dart';
import 'widgets/reader_mode/continuous_reader_mode.dart';
import 'widgets/reader_mode/single_page_reader_mode.dart';

class ReaderScreen extends HookConsumerWidget {
  const ReaderScreen({
    super.key,
    required this.mangaId,
    required this.chapterIndex,
  });
  final int mangaId;
  final int chapterIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      return () => SystemChrome.setEnabledSystemUIMode(
            SystemUiMode.manual,
            overlays: SystemUiOverlay.values,
          );
    }, []);
    final mangaProvider =
        useMemoized(() => mangaWithIdProvider(mangaId: mangaId), []);
    final chapterProviderWithIndex = useMemoized(
        () => chapterProvider(mangaId: mangaId, chapterIndex: chapterIndex),
        []);

    final manga = ref.watch(mangaProvider);
    final chapter = ref.watch(chapterProviderWithIndex);
    final defaultReaderMode = ref.watch(readerModeKeyProvider);

    final debounce = useRef<Timer?>(null);
    final updateLastRead = useCallback((int currentPage) async {
      final chapterValue = chapter.valueOrNull;
      final isReadingCompeted = chapterValue != null &&
          ((chapterValue.read).ifNull() ||
              (currentPage >=
                  ((chapterValue.pageCount).ifNullOrNegative() - 1)));
      await AsyncValue.guard(
        () => ref.read(mangaBookRepositoryProvider).putChapter(
              mangaId: mangaId,
              chapterIndex: chapterIndex,
              patch: ChapterPut(
                lastPageRead: isReadingCompeted ? 0 : currentPage,
                read: isReadingCompeted,
              ),
            ),
      );
    }, [chapter]);

    final onPageChanged = useCallback<AsyncValueSetter<int>>(
      (int index) async {
        final chapterValue = chapter.valueOrNull;
        if ((chapterValue?.read).ifNull() ||
            (chapterValue?.lastPageRead).ifNullOrNegative() >= index) {
          return;
        }

        final finalDebounce = debounce.value;
        if ((finalDebounce?.isActive).ifNull()) {
          finalDebounce?.cancel();
        }

        if ((index >=
            ((chapter.valueOrNull?.pageCount).ifNullOrNegative() - 1))) {
          updateLastRead(index);
        } else {
          debounce.value = Timer(
            const Duration(seconds: 2),
            () => updateLastRead(index),
          );
        }
        return;
      },
      [chapter],
    );

    return WillPopScope(
      onWillPop: () async {
        ref.invalidate(chapterProviderWithIndex);
        ref.invalidate(mangaChapterListProvider(mangaId: mangaId));
        return true;
      },
      child: SafeArea(
        child: manga.showUiWhenData(
          context,
          (data) {
            if (data == null) return const SizedBox.shrink();
            return chapter.showUiWhenData(
              context,
              (chapterData) {
                if (chapterData == null) return const SizedBox.shrink();
                return switch (data.meta?.readerMode ?? defaultReaderMode) {
                  ReaderMode.singleVertical => SinglePageReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                      scrollDirection: Axis.vertical,
                    ),
                  ReaderMode.singleHorizontalRTL => SinglePageReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                      reverse: true,
                    ),
                  ReaderMode.continuousHorizontalLTR => ContinuousReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                      scrollDirection: Axis.horizontal,
                    ),
                  ReaderMode.continuousHorizontalRTL => ContinuousReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                    ),
                  ReaderMode.singleHorizontalLTR => SinglePageReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                    ),
                  ReaderMode.continuousVertical => ContinuousReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                      showSeparator: true,
                    ),
                  ReaderMode.webtoon => ContinuousReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                    ),
                  ReaderMode.defaultReader || null => ContinuousReaderMode(
                      chapter: chapterData,
                      manga: data,
                      onPageChanged: onPageChanged,
                    )
                };
              },
              refresh: () => ref.refresh(chapterProviderWithIndex),
              addScaffoldWrapper: true,
            );
          },
          addScaffoldWrapper: true,
          refresh: () => ref.refresh(mangaProvider),
        ),
      ),
    );
  }
}
