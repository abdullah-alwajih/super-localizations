library super_localizations;

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

import 'translations/super_localizations.dart';
export 'translations/super_localizations.dart';

abstract class SuperTranslations {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  SuperTranslations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static SuperLocalizations get of => Localizations.of<SuperLocalizations>(
      navigatorKey.currentState!.context, SuperLocalizations)!;
}