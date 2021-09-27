import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuto_environnement_codemagic/app_widget.dart';
import 'package:tuto_environnement_codemagic/config_reader.dart';
import 'package:tuto_environnement_codemagic/environnement.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  late MaterialColor primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.red;
      break;
    case Environment.prod:
      primaryColor = Colors.blue;
      break;
    default:
      primaryColor = Colors.pink;
      break;
  }

  runApp(Provider.value(value: primaryColor, child: MyApp()));
}
