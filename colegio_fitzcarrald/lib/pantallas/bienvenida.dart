import 'package:colegio_fitzcarrald/pantallas/inicio.dart';
import 'package:flutter/material.dart';

class pantallaBienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 249, 233),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 99, 25, 25),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                    border: Border.all(
                      color: Color.fromARGB(255, 99, 25, 25),
                      width: 1.0,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/imagenes/logo.png",
                      scale: 0.1,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 25, 25),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 249, 233),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "I.E. Carlos Fermín Fitzcarrald",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Aplicación de Información Institucional.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Material(
                      color: Color.fromARGB(255, 99, 25, 25),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Inicio(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 80,
                            vertical: 15,
                          ),
                          child: Text(
                            "Iniciar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
