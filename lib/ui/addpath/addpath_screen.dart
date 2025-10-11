import 'package:flutter/material.dart' hide Route;
import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/models/painting/painting.dart';
import '../../routing/routes.dart';
import '../core/localization/applocalization.dart';
import '../core/ui/error_indicator.dart';
import '../core/ui/navigaton_bar.dart';
import 'addpath_viewmodel.dart';

/// Екран для додавання нових маршрутів.
/// На ньому користувач може ввести дані про маршрут і зберегти його.
class AddPathScreen extends StatefulWidget {
  const AddPathScreen({super.key, required this.viewModel});

  final AddPathViewModel viewModel;

  @override
  State<AddPathScreen> createState() => _AddPathScreenState();
}

class _AddPathScreenState extends State<AddPathScreen> {
  final controller = MultiSelectController<Painting>();

  @override
  Widget build(BuildContext context) {
    // Перед будуванням сторінки можна підготувати для неї якісь елементи.
    // Тут ми готуємо елементи для випадаючого списку.
    widget.viewModel.loadPaintings();
    var items = widget.viewModel.paintings
        .map((p) => DropdownItem(label: p.name, value: p))
        .toList();

    // Scaffold описує структуру сторінки
    return Scaffold(
      // Верхній бар з заголовком сторінки і навігацією на
      // попередню сторінку, якщо така є.
      appBar: AppBar(title: Text(AppLocalization.of(context).addRoute)),

      // Навігаційна панель знизу сторінки. Вона в нас додана на всі сторінки
      // тому компонент для неї (TwipNavigation) винесений в пакет core і
      // всюди перевикористовується.
      bottomNavigationBar: TwipNavigation(0),

      // Тіло сторінки. тут додається все що відображається на сторінці.
      body: ListenableBuilder(
        listenable: widget.viewModel,

        // builder - це по суті метод де ми реалізовуємо те як виглядатиме сторінка
        builder: (context, _) {
          String? errorMessage = widget.viewModel.errorMessage;
          List<Painting> paintings = widget.viewModel.paintings;

          // Тут може бути не просто структура віджету,
          // а і якийсь код для обробки помилок для прикладу.
          // В даному випадку коли у viewModel є errorMessage
          // ми відображаємо сторінку з помилкою.
          if (errorMessage != null) {
            // Коли для якогось селектору не вдалось завантажити дані,
            // то краще відразу показати помилку. Не потрібно чекати коли користувач
            // заповнить всі інші поля і сам побачить, що селектор не працює.
            return ErrorIndicator(
              title: "Error",
              label: "Can't load the paintings from https://twip.me :(",
            );
          }

          // А якщо errorMessage був пустим, то дані завантажились успішно
          // і ми будуємо вид звичайної сторінки. В нас це сторінка
          // на якій можна заповнити інформацію про маршрут і зберегти його.

          // Чомусь без такої перевірки тут чи в нас є картини елементи списку залишаються пустими.
          // Уявлення не маю чому :(
          if (paintings.isEmpty) {
            return ErrorIndicator(
              title: "Error",
              label: "There are no paintings to build a path :(",
            );
          }

          // Готуємо елементи для випадаючого списку
          var items = paintings
              .map((p) => DropdownItem(label: p.name, value: p))
              .toList();

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              spacing: 10,
              children: [
                // Поле для вводу назви маршруту
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: AppLocalization.of(context).pathName,
                  ),
                  onChanged: (text) => widget.viewModel.updatePathName(text),
                ),

                Text(AppLocalization.of(context).selectPlacesToVisit),

                // Випадаючий список з мультиселектом з бібліотеки https://pub.dev/packages/multidropdown
                // В нього дуже багато налаштувань, тому займає багато місця
                MultiDropdown<Painting>(
                  items: items,
                  controller: controller,
                  enabled: true,
                  searchEnabled: true,
                  chipDecoration: ChipDecoration(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    wrap: true,
                    runSpacing: 2,
                    spacing: 10,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  fieldDecoration: FieldDecoration(
                    hintText: 'Paintings',
                    showClearIcon: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black87),
                    ),
                  ),
                  dropdownDecoration: const DropdownDecoration(
                    marginTop: 2,
                    maxHeight: 500,
                    header: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Select painting from the list',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  dropdownItemDecoration: DropdownItemDecoration(
                    selectedIcon: Icon(
                      Icons.check_box,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    disabledIcon: Icon(Icons.lock, color: Colors.grey.shade300),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a country';
                    }
                    return null;
                  },
                  onSelectionChange: (selectedItems) {
                    widget.viewModel.updatePlaceToVisit(selectedItems);
                  },
                ),

                // Кнопка, яка опрацьовує збереження
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () {
                    // ми нічого не передаємо в savePath() бо всі дані вже в середині view model.
                    widget.viewModel.savePath();
                    context.go(Routes.routes);
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
