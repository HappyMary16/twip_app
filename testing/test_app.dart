import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:twip_app/ui/core/localization/applocalization.dart';

import 'fakes/mocks.dart';

Future<void> testApp(
  WidgetTester tester,
  Widget body, {
  GoRouter? goRouter,
}) async {
  tester.view.devicePixelRatio = 1.0;
  await tester.binding.setSurfaceSize(const Size(1200, 800));

  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: [AppLocalizationDelegate()],
      theme: ThemeData.light(),
      home: InheritedGoRouter(
        goRouter: goRouter ?? MockGoRouter(),
        child: Scaffold(body: body),
      ),
    ),
  );
}

class AppTheme {}
