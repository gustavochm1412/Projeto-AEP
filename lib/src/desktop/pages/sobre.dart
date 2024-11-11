import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meu_portfolio/src/widgets/sobre/botao_rede.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  static const botoes = [
    BotaoRede(
      icone: Bootstrap.linkedin,
      url: 'https://www.linkedin.com/in/jean-carlo-dev/',
    ),
    BotaoRede(
      icone: Bootstrap.github,
      url: 'https://github.com/jeancarlopolo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Muito prazer, este é o nosso grupo!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Somos o time "LinkGuard". Nosso time é composto por:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '1. Gustavo Henrique;\n'
              '2. Luciano Giraldi;\n'
              '3. Vitor Eiji.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/grupo.jpg',
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Estamos animados para continuar trabalhando e aprendendo juntos!',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: botoes,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
