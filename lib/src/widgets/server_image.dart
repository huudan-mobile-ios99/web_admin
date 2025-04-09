// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/endpoints.dart';
import '../constants/enum.dart';
import '../global_providers/global_providers.dart';
import '../screen/settings/presentation/server/widget/credential_popup/credentials_popup.dart';
import '../screen/settings/widgets/server_port_tile/server_port_tile.dart';
import '../screen/settings/widgets/server_url_tile/server_url_tile.dart';
import '../utils/extensions/custom_extensions.dart';
class CustomCacheManager extends CacheManager {
  static const key = 'customCache';

  static CacheManager instance = CustomCacheManager._();

  CustomCacheManager._()
      : super(
          Config(
            key,
            stalePeriod: const Duration(days: 7),
            maxNrOfCacheObjects: 200,
            repo: JsonCacheInfoRepository(databaseName: key),
            fileService: HttpFileService(),
          ),
        );

  
}

class ServerImage extends ConsumerWidget {
  const ServerImage({
    super.key,
    required this.imageUrl,
    this.size,
    this.fit,
    this.appendApiToUrl = false,
    this.progressIndicatorBuilder,
    this.wrapper,
    this.width_item  = 80.0,
  });

  final String imageUrl;
  final double? width_item;
  final Size? size;
  final BoxFit? fit;
  final bool appendApiToUrl;
  final Widget Function(BuildContext, String, DownloadProgress)? progressIndicatorBuilder;
  final Widget Function(Widget child)? wrapper;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final width_item = 50.0;
    final authType = ref.watch(authTypeKeyProvider);
    final basicToken = ref.watch(credentialsProvider);
    final baseApi = "${Endpoints.baseApi(
      baseUrl: ref.watch(serverUrlProvider),
      port: ref.watch(serverPortProvider),
      addPort: ref.watch(serverPortToggleProvider)!.ifNull(),
      appendApiToUrl: appendApiToUrl,
    )}"
        "$imageUrl";
    return SizedBox(
      height: width_item,
      width: width_item,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(width_item!),
        borderRadius: BorderRadius.circular(0.0),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          filterQuality: FilterQuality.none,
          height: size?.height,
          cacheManager: CustomCacheManager.instance,
          // httpHeaders: authType == AuthType.basic && basicToken != null
          //     ? {"Authorization": basicToken}
          //     : null,
          width: size?.width,
          useOldImageOnUrlChange: true,
          fit: fit ?? BoxFit.fitHeight,
          imageRenderMethodForWeb:authType == AuthType.basic && basicToken != null
                  ? ImageRenderMethodForWeb.HttpGet
                  : ImageRenderMethodForWeb.HtmlImage,
          placeholderFadeInDuration: const Duration(seconds: 2),
          progressIndicatorBuilder: progressIndicatorBuilder == null
              ? null
              : (context, url, progress) => wrapper != null
                  ? wrapper!(progressIndicatorBuilder!(context, url, progress))
                  : progressIndicatorBuilder!(context, url, progress),
          errorWidget: (context, error, stackTrace) => wrapper != null
              ? wrapper!(
                  const Icon(
                    Icons.broken_image_rounded,
                    color: Colors.grey,
                  ),
                )
              : const Icon(
                  Icons.broken_image_rounded,
                  color: Colors.grey,
                ),
        ),
      ),
    );
  }
}

class ServerImageWithCpi extends StatelessWidget {
  const ServerImageWithCpi({
    super.key,
    required this.url,
    required this.outerSize,
    required this.innerSize,
    required this.isLoading,
  });
  final bool isLoading;
  final Size outerSize;
  final Size innerSize;
  final String url;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SizedBox.fromSize(
            size: outerSize,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: CircularProgressIndicator(strokeWidth: 1),
                ),
                ServerImage(
                  imageUrl: url,
                  size: innerSize,
                )
              ],
            ),
          )
        : ServerImage(
            imageUrl: url,
            size: outerSize,
          );
  }
}
