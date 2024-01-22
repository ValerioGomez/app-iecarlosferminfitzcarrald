import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentosScreen extends StatelessWidget {
  final List<Map<String, dynamic>> documentList = [
    {
      'title': 'Reglamento',
      'icon': Icons.picture_as_pdf,
      'link': 'https://www.google.com',
    },
    {
      'title': 'Himnos',
      'icon': Icons.description,
      'link': 'https://www.youtube.com',
    },
    {
      'title': 'Requisitos',
      'icon': Icons.insert_drive_file,
      'link':
          'https://api.whatsapp.com/send/?phone=51931537331&text=Hola,%20quiero%20más%20información',
    },
    {
      'title': 'Admision 2024',
      'icon': Icons.picture_as_pdf,
      'link':
          'https://api.whatsapp.com/send/?phone=51931537331&text=Hola,%20quiero%20más%20información',
    },
    {
      'title': 'Cronograma 2024',
      'icon': Icons.description,
      'link':
          'https://api.whatsapp.com/send/?phone=51931537331&text=Hola,%20quiero%20más%20información',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regresar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Seleccione Documento',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              shrinkWrap: true,
              itemCount: documentList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
                    String url = documentList[index]['link'];
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      print('No se pudo abrir el enlace: $url');
                    }
                  },
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            documentList[index]['icon'],
                            size: 40,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 8),
                          Text(
                            documentList[index]['title'],
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
