// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twip_app/data/repositories/appconfig/app_config_repository.dart';
import 'package:twip_app/ui/settings/settings_viewmodel.dart';
import 'package:twip_app/ui/settings/settings_widget.dart';

import '../../../testing/test_app.dart';
import '../../../testing/fakes/mocks.dart';
import '../../../testing/fakes/repository/fake_app_config_repository.dart';

void main() {
  group('Settings widget tests', () {
    late SettingsViewModel viewModel;
    late MockGoRouter goRouter;

    setUp(() {
      var appConfigRepository =
          FakeAppConfigRepository() as AppConfigRepository;
      viewModel = SettingsViewModel(appConfigRepository);
      goRouter = MockGoRouter();
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        SettingsWidget(viewModel: viewModel),
        goRouter: goRouter,
      );
    }

    testWidgets('screen loads', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await loadScreen(tester);

      expect(find.byType(SettingsWidget), findsOneWidget);
    });

    testWidgets('theme switch present', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await loadScreen(tester);

      expect(find.byType(Switch), findsOneWidget);
    });

    testWidgets('theme switch changes theme', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await loadScreen(tester);

      // Симулюємо натискання на Switch
      await tester.tap(find.byType(Switch));

      expect(viewModel.isDarkMode, true);
    });
  });
}
