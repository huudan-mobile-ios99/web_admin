// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_src/function/sharepreference_manager.dart';
import 'my_src/screen/login/loginpage.dart';
import 'simple_bloc_observer.dart';
import 'src/global_providers/global_providers.dart';
import 'src/screen/about/presentation/about/controllers/about_controller.dart';
import 'src/sorayomi.dart';

Future<void> main() async {
  Bloc.observer = const SimpleBlocObserver();
  
  //check login
  


  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();
  final sharedPreferences = await SharedPreferences.getInstance();

  Directory? appDirectory;
  if (!kIsWeb) {
    final appDocDirectory = await getApplicationDocumentsDirectory();
    appDirectory = Directory(path.join(appDocDirectory.path, 'Sorayomi'));

    await appDirectory.create(recursive: true);

    final cacheFiles = ['dio_cache.hive', 'dio_cache.lock'];
    for (final cacheFile in cacheFiles) {
      final oldCacheFilePath = path.join(appDocDirectory.path, cacheFile);
      final newCacheFilePath = path.join(appDirectory.path, cacheFile);

      if (!(await File(newCacheFilePath).exists()) &&
          await File(oldCacheFilePath).exists()) {
        await File(oldCacheFilePath).rename(newCacheFilePath);
      }
    }
  } else {
    appDirectory = null;
  }

  SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    ProviderScope(
      overrides: [
        packageInfoProvider.overrideWithValue(packageInfo),
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        appDirectoryProvider.overrideWithValue(appDirectory),
      ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      )
    ),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key, }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }
  Future<void> _checkLoginStatus() async {
    isLoggedIn = await UserLoginManager.isLoggedIn();
    setState(() {}); // Update the UI based on the login status
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Admin Controller',
        theme: ThemeData(
          cardColor: Colors.white,
          platform: TargetPlatform.windows,
          hoverColor: Colors.grey.shade200,
          primaryColor: Colors.deepOrangeAccent,
          dividerColor: Colors.grey,
          indicatorColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: false,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: GoogleFonts.poppins().fontFamily,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routes: const {
        },
        home: isLoggedIn == false ? const LoginPage() : const Sorayomi()
        );
  }
}