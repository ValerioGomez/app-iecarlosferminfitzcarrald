import 'package:flutter/material.dart';

class CursosSeccion extends StatelessWidget {
  List CursosPrimaria = [
    'Matemática',
    'Comunicacion',
    'Ciencia Tecnología y Ambiente',
    'Personal Social',
    'Educación Física',
    'Religión',
    'Innovación',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CursosPrimaria.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              //color: index == 0
              //? Color(0xFF631919)
              //: Color(0xFF631919).withOpacity(0.6),

              color: Color(0xFF631919),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(CursosPrimaria[index]),
          //subtitle: Text(CursosPrimaria[index]),
        );
      },
    );
  }
}
