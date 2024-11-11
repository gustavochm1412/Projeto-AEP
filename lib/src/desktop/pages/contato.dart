import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart'; // Para abrir os links do Instagram

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entre em Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Entre em Contato com o Nosso Time!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Estamos sempre dispostos a ajudar e ouvir você. Se precisar entrar em contato, por favor use as informações abaixo:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'E-mail: gustavoteste@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Bootstrap.instagram, color: Colors.pink),
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://www.instagram.com/guustavohenrii/'));
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'E-mail: lucianoteste@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Bootstrap.instagram, color: Colors.pink),
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://www.instagram.com/luciano_giraldi/'));
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'E-mail: vitorteste@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Bootstrap.instagram, color: Colors.pink),
                  onPressed: () {
                    launchUrl(
                        Uri.parse('https://www.instagram.com/vitorgooto/'));
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Ação de envio de mensagem ou navegação
                },
                icon: Icon(Icons.message),
                label: Text('Enviar Mensagem'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
