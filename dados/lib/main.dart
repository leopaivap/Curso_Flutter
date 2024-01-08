import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dados',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dados(),
      ),
    ),
  );
}

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroDadoEsquerda = 1, numeroDadoDireita = 1;

  void alteraFaces() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: TextButton(
                child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
                onPressed: () {
                  alteraFaces();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: TextButton(
                child: Image.asset('imagens/dado$numeroDadoDireita.png'),
                onPressed: () {
                  alteraFaces();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
