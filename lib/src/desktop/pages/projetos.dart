import 'package:flutter/material.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  _ProjetosPageState createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      'question':
          'Qual destas é uma característica comum de um link de phishing?',
      'options': [
        {'text': 'Erros de ortografia no domínio', 'score': 1},
        {'text': 'Domínio legítimo', 'score': 0},
        {'text': 'Encurtador de link popular', 'score': 0},
      ],
    },
    {
      'question':
          'Como você deve agir ao receber um e-mail suspeito pedindo para clicar em um link?',
      'options': [
        {'text': 'Clicar imediatamente para verificar', 'score': 0},
        {'text': 'Ignorar e deletar o e-mail', 'score': 1},
        {'text': 'Encaminhar o e-mail para amigos', 'score': 0},
      ],
    },
    {
      'question':
          'Qual é a forma mais segura de verificar a legitimidade de um link?',
      'options': [
        {
          'text': 'Passar o mouse sobre o link para verificar o URL',
          'score': 1
        },
        {'text': 'Clicar diretamente no link', 'score': 0},
        {'text': 'Confiar na aparência do e-mail', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _currentQuestionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gamificação de Segurança'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _currentQuestionIndex < _questions.length
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pergunta ${_currentQuestionIndex + 1}/${_questions.length}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    _questions[_currentQuestionIndex]['question'] as String,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_currentQuestionIndex]['options']
                          as List<Map<String, Object>>)
                      .map((option) {
                    return ElevatedButton(
                      onPressed: () => _answerQuestion(option['score'] as int),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Cor de fundo branca
                      ),
                      child: Text(
                        option['text'] as String,
                        style: TextStyle(color: Colors.black), // Letra preta
                      ),
                    );
                  }).toList(),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Parabéns! Você completou o quiz!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sua pontuação: $_score/${_questions.length}',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _resetQuiz,
                    child: Text('Tentar Novamente'),
                  ),
                ],
              ),
      ),
    );
  }
}
