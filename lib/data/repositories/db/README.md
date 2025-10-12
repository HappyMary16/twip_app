# Зберігання даних в SQLite базу даних

Для роботи з базою даних потрібно встановити [sqflite](https://pub.dev/packages/sqflite) 
виконавши `flutter pub add sqflite`.

**Важливо**: дана бібліотека підтримує тільки Android, macOS, iOS платформи. 
Для роботи з іншими платформами треба встановлювати додаткові бібліотеки.

**Для WEB додатково потрібно**:
- встановити [sqflite_common_ffi_web](https://pub.dev/packages/sqflite_common_ffi_web) 
виконавши `flutter pub add sqflite_common_ffi_web`
- виконати `dart run sqflite_common_ffi_web:setup` 
(згенеруються файти sqlite3.wasm і sqflite_sw.js, 
їх можна закомітити або генерувувати після клонування репозиторію)
- замінити **databaseFactory** з [sqflite](https://pub.dev/packages/sqflite)
на **databaseFactoryFfiWeb** з [sqflite_common_ffi_web](https://pub.dev/packages/sqflite_common_ffi_web).
Для цього потрібно додати наступний фрагмент коду перед викликом `openDatabase(...)`
```dart
import 'package:flutter/foundation.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

// Код класу

if (kIsWeb) {
  // Change default factory on the web
  databaseFactory = databaseFactoryFfiWeb;
}

// Тепер можна викликати openDatabase. 
// На інших платформах все ще використовуватиметься databaseFactory з sqflite
```

**Важливо**: На WEB платформі база даних зберігається в indexedb браузера. 
Як і будь-яке інше веб-сховище, вона прив'язана до порту(тобто localhost:8080 
відрізняється від localhost:8081). Слід використовувати той самий порт для збереження 
тієї ж бази даних indexedb. Якщо запускати додаток на різних портах, 
то при кожному запуску створюватиметься нова база даних.
