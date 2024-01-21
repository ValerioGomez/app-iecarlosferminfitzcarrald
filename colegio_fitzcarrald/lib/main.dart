import 'package:colegio_fitzcarrald/pantallas/splash_screen.dart'; // Importa el splash_screen.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(), // Muestra el Splash Screen primero
    );
  }
}
