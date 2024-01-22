import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TuPantalla extends StatefulWidget {
  @override
  _TuPantallaState createState() => _TuPantallaState();
}

class _TuPantallaState extends State<TuPantalla> {
  TextEditingController _numeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Agrega la imagen al inicio
            Image.asset(
              'assets/imagenes/secretariaVirtual.png',
              height: 100, // ajusta la altura según tus necesidades
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchWhatsApp(
                  'https://api.whatsapp.com/send/?phone=51931537331&text=Hola,%20quiero%20más%20información',
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 31, 206, 74),
              ),
              child: Text(
                'Consultar Ahora',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            TextField(
              controller: _numeroController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // Puedes realizar acciones adicionales si es necesario
              },
              decoration: InputDecoration(
                labelText: 'Ingrese el número',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Obtén el número del TextField y realiza la acción de enviar
                String phoneNumber = '51' + _numeroController.text;
                _sendNumberViaWhatsApp(phoneNumber);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 90, 56, 211),
              ),
              child: Text(
                'Enviar',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función para abrir un enlace de WhatsApp
  void _launchWhatsApp(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      print('No se pudo abrir el enlace de WhatsApp: $url');
    }
  }

  // Función para enviar un número a WhatsApp
  void _sendNumberViaWhatsApp(String number) {
    String whatsappUrl = 'https://api.whatsapp.com/send/?phone=$number';
    _launchWhatsApp(whatsappUrl);
  }
}
