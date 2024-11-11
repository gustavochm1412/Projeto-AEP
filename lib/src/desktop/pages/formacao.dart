import 'package:flutter/material.dart';

class FormacaoPage extends StatelessWidget {
  const FormacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Identificação de Links Nocivos'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Como Identificar Links Nocivos',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Links nocivos são usados por atacantes para roubar informações pessoais, instalar malware ou realizar outras atividades prejudiciais. Aqui estão algumas dicas para ajudá-lo a identificar links nocivos:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '1. Verifique o Domínio do Link',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Certifique-se de que o domínio do link é legítimo. Atente para pequenas diferenças no nome, como letras trocadas (ex: "g00gle.com" ao invés de "google.com").',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '2. Não Clique em Links Curiosos ou Não Solicitados',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Cuidado com links enviados por e-mail ou mensagens que você não esperava. Links não solicitados podem ser parte de uma tentativa de phishing.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '3. Passe o Mouse sobre o Link para Verificar o Destino',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Antes de clicar, passe o mouse sobre o link para ver o URL de destino. Se o link não corresponder ao que é exibido ou parecer suspeito, não clique.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '4. Evite Links com Encurtadores Desconhecidos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Links encurtados podem esconder URLs perigosos. Use ferramentas para expandir o link e verificar o destino antes de clicar.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '5. Verifique a Ortografia e Gramática',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'E-mails e sites falsos geralmente contêm erros de ortografia e gramática. Empresas legítimas costumam revisar seus conteúdos antes de enviar.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '6. Utilize Ferramentas de Verificação de Links',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Existem várias ferramentas online para verificar se um link é seguro, como o Google Safe Browsing (https://transparencyreport.google.com/safe-browsing/search).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Ação ao clicar no botão
                },
                child: Text('Saiba Mais sobre Segurança na Web'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
