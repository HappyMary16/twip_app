import 'package:flutter/material.dart' hide Route;
import 'package:twip_app/ui/settings/settings_view_model.dart';

import '../core/localization/applocalization.dart';
import '../core/ui/navigaton_bar.dart';

/// Екран для редагування налаштувань програми.
/// На ньому користувач може змінити тему.
class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key, required this.viewModel});

  final SettingsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // Scaffold описує структуру сторінки
    return Scaffold(
      // Верхній бар з заголовком сторінки і навігацією на
      // попередню сторінку, якщо така є.
      // Навігація додаться автоматично коди є appBar.
      appBar: AppBar(title: Text(AppLocalization.of(context).addRoute)),

      // Навігаційна панель знизу сторінки. Вона в нас додана на всі сторінки
      // тому компонент для неї (TwipNavigation) винесений в пакет core і
      // всюди перевикористовується.
      bottomNavigationBar: TwipNavigation(2),

      // Тіло сторінки. тут додається все що відображається на сторінці.
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            const Text('Dark Mode'),
            ListenableBuilder(
              listenable: viewModel,
              builder: (context, _) {
                return Switch(
                  value: viewModel.isDarkMode,
                  onChanged: (_) {
                    viewModel.toggle();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
