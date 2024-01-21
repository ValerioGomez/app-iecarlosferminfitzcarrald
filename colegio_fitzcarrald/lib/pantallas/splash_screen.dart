import 'dart:async';
import 'package:colegio_fitzcarrald/pantallas/bienvenida.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Timer(Duration(milliseconds: 4000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => pantallaBienvenida()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 99, 25, 25),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(seconds: 3), // Duración del desvanecimiento
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Image.asset('assets/imagenes/logo.png'),
          ),
        ),
      ),
    );
  }
}
