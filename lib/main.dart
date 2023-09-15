// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:racing_rules/views/conduct_of_a_race_screen.dart';
import 'package:racing_rules/views/entry_qual_screen.dart';
import 'package:racing_rules/views/fair_sailing_screen.dart';
import 'package:racing_rules/views/fundamental_rules_screen.dart';
import 'package:racing_rules/views/home_screen.dart';
import 'package:racing_rules/views/other_req_when_racing_screen.dart';
import 'package:racing_rules/views/protest_appeals_screen.dart';
import 'package:racing_rules/views/race_org_screen.dart';
import 'package:racing_rules/views/safety_screen.dart';
import 'package:racing_rules/views/settings_screen.dart';
import 'package:racing_rules/views/when_boats_meet_screen.dart';

/// This sample app shows an app with two screens.
///
/// The first route '/' is mapped to [HomeScreen], and the second route
/// '/details' is mapped to [SettingsScreen].
///
/// The buttons use context.go() to navigate to each destination. On mobile
/// devices, each destination is deep-linkable and on the web, can be navigated
/// to using the address bar.
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'settings_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
        GoRoute(
          path: 'fundamental_rules_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const FundamentalRulesScreen();
          },
        ),
        GoRoute(
          path: 'when_boats_meet_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const WhenBoatsMeetScreen();
          },
        ),
        GoRoute(
          path: 'conduct_of_a_race',
          builder: (BuildContext context, GoRouterState state) {
            return const ConductScreen();
          },
        ),
        GoRoute(
          path: 'other_req_when_racing_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const OtherReqScreen();
          },
        ),
        GoRoute(
          path: 'protest_appeals_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const ProtestAppealsScreen();
          },
        ),
        GoRoute(
          path: 'entry_qual_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const EntryQualScreen();
          },
        ),
        GoRoute(
          path: 'race_org_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const RaceOrgScreen();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

/// The details screen
