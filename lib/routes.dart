// routes.dart
import 'package:flutter/material.dart';
import 'main.dart'; //Importando main.dart

class Routes {
  static const String primeraPantalla = '/';
  static const String segundaPantalla = '/page2';

  static Map<String, WidgetBuilder> routes = {
    primeraPantalla: (context) => PrimeraPantalla(),
    segundaPantalla: (context) => SegundaPantalla(),
  };
}