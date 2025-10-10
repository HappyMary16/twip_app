# Domain models

**Domain models (доменні моделі)** - це моделі, які використовуються 
для передачі даних між UI i Data шарами. Вони не відносяться ні до UI, ні до Data шару.

В моделях нам завжди треба реалізовувати getters, setter, toString, 
методи які з json будуватимуть обʼєкт і тому подібне. Ці всі методи 
зазвичай не мають ніякої бізнес логіки і виглядають майже ідентично для всіх моделей.
Тому щоб не писати цей код в ручну в даному проєкті використовується 
залежність [freezed](https://pub.dev/packages/freezed).

## Створення моделей з freezed

### Налаштування
Для використання цієї залежності потрібно:
- додати freezed в проєкт виконавши команду
```shell
flutter pub add \ 
  dev:build_runner \ 
  freezed_annotation \ 
  dev:freezed 

# if using freezed to generate fromJson/toJson, also add: 
flutter pub add json_annotation dev:json_serializable 
```
- запустити генератор коду (потрібно запускати завжди коли працюєте над прєктом)
```shell
dart run build_runner watch -d 
```

Тепер, коли все налаштовано, ви можете додавати нові моделі в проєкт.
Бажано для кожної моделі створювати директорію. Бо freezed буде генерувати 
для кожної моделі 2 додаткових файли.

### Приклад коду
Для прикладу ви хочете створити модель **painting**, вам потрібно:
- створити директорію **painting**
- створити файл [**painting**.dart](painting/painting.dart)
- запустити генератор коду, якщо ще не запущений
- файли [**painting**.freezed.dart](painting/painting.freezed.dart) 
і [**painting**.g.dart](painting/painting.g.dart) будуть створені генератором коду.

Код моделі [**painting**.dart](painting/painting.dart):
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@freezed
abstract class Painting with _$Painting {
  const factory Painting({required int id, required String name}) = _Painting;

  factory Painting.fromJson(Map<String, dynamic> json) =>
      _$PaintingFromJson(json);
}
```

**Важливо**: Зверніть увагу що в коді [**painting**.dart](painting/painting.dart) є
в багатьох місцях використано слово **painting**:
- part '**painting**.freezed.dart';
- part '**painting**.g.dart';
- with _$**Painting**
- const factory **Painting**({...}) = _**Painting**;
- **Painting**.fromJson(Map<String, dynamic> json)
- _$**Painting**FromJson(json);

При створенні нової моделі ви маєте писати її назву в усі ці місця.
Тобто, якщо ви створите модель **cat**, всюди замість painting має бути **cat**.


