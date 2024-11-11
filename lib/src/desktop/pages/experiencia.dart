import 'package:flutter/material.dart';

class ExperienciaPage extends StatelessWidget {
  const ExperienciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController linkController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificador de Links'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: linkController,
              decoration: const InputDecoration(
                labelText: 'Insira o link',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final link = linkController.text.trim();
                if (link == 'https://www.esportenet.net/') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Este não é um link seguro!',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Link validado e sem perigo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
              },
              child: const Text('Validar Link',
                  style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
