import 'package:flutter/material.dart';
import 'routes.dart'; //Importa archivo de rutas

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación con Rutas Nombradas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.primeraPantalla,
      routes: Routes.routes,
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              Routes.segundaPantalla);
          },
          child: Text('Ir a la segunda página'),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Volver a la página principal'),
        ),
      ),
    );
  }
}
