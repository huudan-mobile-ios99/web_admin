// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../my_src/screen/user/view/user_page.dart';
import '../../../../utils/extensions/custom_extensions.dart';

class UpdatesScreen extends HookConsumerWidget {
  const UpdatesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(context.l10n!.updates),
          centerTitle: true,
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         onPress();
          //       },
          //       icon: Icon(Icons.add))
          // ],
        ),
        body: const UserPage(
          
        ));
  }
}
