import 'package:flutter/material.dart';

class todoslosCursos extends StatelessWidget {
  List CursosPrimaria = [
    'Matemática',
    'Comunicacion',
    'Ciencia y Ambiente',
    'Ciencias Sociales',
    'Educación Física',
    'Innovación',
    'Arte y Cultura',
  ];

  List CursosSecundaria = [
    'Comunicación',
    'Matemáticas',
    'Ciencia, Tecnología y Ambiente',
    'Historia, Geografía y Economía',
    'Desarrollo Personal, Ciudadanía y Cívica',
    'Arte y Cultura',
    'Educación Física',
    'Inglés',
  ];

  List CursosCEBA = [
    'Comunicación',
    'Matemáticas',
    'Ciencia, Tecnología y Ambiente',
    'Historia, Geografía y Economía',
    'Desarrollo Personal, Ciudadanía y Cívica',
    'Arte y Cultura',
    'Educación Física',
    'Inglés',
  ];

  List CursosTecnicos = [
    'Carpintería',
    'Mecánica de producción',
    'Automotriz',
    'Industria del vestido',
    'Industria alimentaria',
    'Electricidad',
    'Computación',
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
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.library_books,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.edit,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Cursos de los Niveles",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              "Primaria",
              style: TextStyle(
                color: Color.fromARGB(255, 90, 56, 211),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Icon(
            Icons.menu_book,
            color: Color.fromARGB(255, 90, 56, 211),
            size: 30,
          ), //Aqui va container
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount: CursosPrimaria.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 56, 211),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    CursosPrimaria[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              "Secundaria",
              style: TextStyle(
                color: Color.fromARGB(255, 31, 206, 74),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Icon(
            Icons.menu_book,
            color: Color.fromARGB(255, 31, 206, 74),
            size: 30,
          ), //Aqui va container
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount: CursosSecundaria.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 206, 74),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    CursosSecundaria[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              "CEBA",
              style: TextStyle(
                color: Color(0xFFFFCF2F),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Icon(
            Icons.menu_book,
            color: Color(0xFFFFCF2F),
            size: 30,
          ), //Aqui va container
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount: CursosCEBA.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCF2F),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    CursosCEBA[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              "Áreas Técnicas",
              style: TextStyle(
                color: Color.fromARGB(255, 90, 56, 211),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Icon(
            Icons.menu_book,
            color: Color.fromARGB(255, 90, 56, 211),
            size: 30,
          ), //Aqui va container
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount: CursosTecnicos.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 90, 56, 211),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_book,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    CursosPrimaria[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
