import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalization {
  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  static const _strings = <String, String>{
    'routes': 'My paths',
    'edit': 'Edit',
    'addRoute': 'New path',
    'paintings': 'Paintings',
    'pathName': 'Path name',
    'selectPlacesToVisit': 'Select places to visit'
  };

  // If string for "label" does not exist, will show "[LABEL]"
  static String _get(String label) =>
      _strings[label] ?? '[${label.toUpperCase()}]';

  String get routes => _get('routes');
  String get edit => _get('edit');
  String get addRoute => _get('addRoute');
  String get paintings => _get('paintings');
  String get pathName => _get('pathName');
  String get selectPlacesToVisit => _get('selectPlacesToVisit');
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture(AppLocalization());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
