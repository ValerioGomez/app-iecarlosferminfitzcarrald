import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class pantallaLogros extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/imagenes/logros/1.jpg',
    'assets/imagenes/logros/2.jpg',
    'assets/imagenes/logros/3.jpg',
    'assets/imagenes/logros/4.jpg',
    'assets/imagenes/logros/5.jpg',
    'assets/imagenes/logros/7.jpg',
    'assets/imagenes/logros/8.jpg',
    'assets/imagenes/logros/9.jpg',
    'assets/imagenes/logros/10.jpg',
    'assets/imagenes/logros/11.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería de Logros'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showImageInDialog(context, index);
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showImageInDialog(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageScreen(imagePaths, index),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  final List<String> imagePaths;
  final int initialIndex;

  ImageScreen(this.imagePaths, this.initialIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoViewGallery.builder(
        itemCount: imagePaths.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(imagePaths[index]),
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        backgroundDecoration: BoxDecoration(
          color: Colors.black,
        ),
        pageController: PageController(initialPage: initialIndex),
      ),
    );
  }
}
