import 'package:flutter/material.dart';

void main() {
  // Meu primeiro código em Flutter
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
            'Eu Sou Rico',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: Center(
          child: Image(image: AssetImage("imagens/rubi.png"), width: 350),
        ),
      ),
    ),
  );
}
