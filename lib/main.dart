import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:taskati_app/taskati_app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('ar'),
      child: const TaskatiApp(),
    ),
  );
}