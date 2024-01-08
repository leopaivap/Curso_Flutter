import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> marcadorDePontos = [];

  List<String> perguntas = [
    'O metrô é um dos meios de transporte mais seguros do mundo',
    'A culinária brasileira é uma das melhores do mundo.',
    'Vacas podem voar, assim como peixes utilizam os pés para andar.'
  ];

  List<bool> respostas = [true, true, false];

  int numeroDaQuestaoAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                perguntas[numeroDaQuestaoAtual],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text(
                'Verdadeiro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //O usuário clica no botão verdadeiro.
                bool respostaCerta = respostas[numeroDaQuestaoAtual];

                if (respostaCerta == true) {}
                setState(() {
                  numeroDaQuestaoAtual++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
              child: Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //O usuário clica no botão falso.
                bool respostaCerta = respostas[numeroDaQuestaoAtual];

                if (respostaCerta == false) {}
                setState(() {
                  numeroDaQuestaoAtual++;
                });
              },
            ),
          ),
        ),
        Row(
          children: marcadorDePontos,
        ),
      ],
    );
  }
}

/*
pergunta1:
pergunta2: ', verdadeiro,
pergunta3: '', falso,
*/
