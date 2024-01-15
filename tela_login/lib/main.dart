import 'package:flutter/material.dart';
import 'package:tela_login/login_page.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
     home: Scaffold(
      appBar: AppBar(
      title: Text('Tela de testes'),
      centerTitle: true,
      ),
      body: SafeArea(
        child: LoginPage(),
        ),
     ),
    );
  }
}