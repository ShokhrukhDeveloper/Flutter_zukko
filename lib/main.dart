import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zukko_books/presentation/pages/app_widget.dart';
import 'package:logging/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  _setupLogging();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('uz', 'UZ')],
      path: 'assets/translation',
      fallbackLocale: const Locale('uz', 'UZ'),
      child: const AppWidget(),
    ),
  );
}

void _setupLogging() => Logger.root
  ..level = kDebugMode ? Level.ALL : Level.WARNING
  ..onRecord.listen(
    (record) => debugPrint(
      '${record.level.name}: '
      '${record.time} '
      '${record.loggerName}: '
      '${record.message}',
    ),
  );
