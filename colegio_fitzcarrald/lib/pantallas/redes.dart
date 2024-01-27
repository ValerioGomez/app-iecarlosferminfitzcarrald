import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class redesSociales extends StatelessWidget {
  final List<Map<String, dynamic>> documentList = [
    {
      'title': 'Facebook',
      'icon': Icons.facebook,
      'color': Colors.blue,
      'link': 'https://www.facebook.com/fitzcarraldpuertomaldonado',
    },
    {
      'title': 'X',
      'icon': Icons.close,
      'color': Color.fromARGB(255, 83, 83, 83),
      'link': 'https://www.twitter.com',
    },
    {
      'title': 'WhatsApp',
      'icon': Icons.message,
      'color': Colors.green,
      'link':
          'https://api.whatsapp.com/send/?phone=51931537331&text=Hola,%20quiero%20más%20información',
    },
    {
      'title': 'Instagram',
      'icon': Icons.camera_alt,
      'color': Colors.pink,
      'link': 'https://www.instagram.com',
    },
    {
      'title': 'LinkedIn',
      'icon': Icons.work,
      'color': Colors.blue,
      'link': 'https://www.linkedin.com',
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
              'Seleccione Red Social',
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
                    if (await canLaunch(url)) {
                      await launch(url);
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
                            color: documentList[index]['color'],
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
