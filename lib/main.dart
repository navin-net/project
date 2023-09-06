import 'package:flutter/material.dart';
import 'package:project/screens/my_app.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'EN'), Locale('km', 'KM')],
      path: 'assets/language', // <-- change the path of the translation files
      fallbackLocale: const Locale('km', 'KM'),
      child: MyApp()
    ),
  );
}
