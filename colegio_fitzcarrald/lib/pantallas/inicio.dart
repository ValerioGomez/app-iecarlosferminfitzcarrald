import 'package:colegio_fitzcarrald/pantallas/cursos.dart';
import 'package:colegio_fitzcarrald/pantallas/logros.dart';
import 'package:colegio_fitzcarrald/pantallas/pdf.dart';
import 'package:colegio_fitzcarrald/pantallas/pantallaLogros.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  List catNombres = [
    "Areas",
    "Clases",
    "Documentos",
    "Biblioteca",
    "Cursos",
    "Logros",
  ];

  List<Color> catColores = [
    Color(0xFFFFCF2F),
    Color.fromARGB(255, 31, 206, 74),
    Color.fromARGB(255, 90, 56, 211),
    Color.fromARGB(255, 213, 47, 255),
    Color.fromARGB(255, 218, 51, 51),
    Color.fromARGB(255, 104, 228, 88),
  ];

  List<Icon> catIconos = [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];

  List imgList = [
    'Primaria',
    'Secundaria',
    'Tecnicas',
    'CEBA',
  ];

  List imgDescripcionList = [
    '10 Cursos',
    '05 Cursos',
    '20 Areas',
    '15 Cursos',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 99, 25, 25),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Bienvenido",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Buscar Aqui ...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNombres.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Aquí añade la lógica de navegación para cada ícono.
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PdfScreen(),
                              ),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => pantallaLogros(),
                              ),
                            );
                            break;
                          // ... Repite para otros casos según sea necesario.
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: catColores[index],
                                shape: BoxShape.circle),
                            child: Center(
                              child: catIconos[index],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            catNombres[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Areas",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 99, 25, 25),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  pantallaCursos(imgList[index]),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/imagenes/${imgList[index]}.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              imgDescripcionList[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color.fromARGB(255, 99, 25, 25),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Cursos'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Areas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
        ],
      ),
    );
  }
}
