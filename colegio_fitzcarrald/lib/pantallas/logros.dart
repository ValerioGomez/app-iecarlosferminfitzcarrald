import 'package:flutter/material.dart';

class pantallaLogros extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/imagenes/logros/image1.jpg',
    'assets/imagenes/logros/image2.jpg',
    'assets/imagenes/logros/image3.jpg',
    // Añade más rutas de imágenes según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Logros'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              2, // Puedes ajustar el número de columnas según tu preferencia
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Agrega aquí la lógica para hacer algo cuando se toque una imagen
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit
                    .cover, // Ajusta la imagen para que cubra todo el espacio
              ),
            ),
          );
        },
      ),
    );
  }
}
