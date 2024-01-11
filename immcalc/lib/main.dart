import 'package:flutter/material.dart';
import 'package:immcalc/telas/tela_resultados.dart';
import 'telas/tela_principal.dart';
import 'calculadora_imc.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaPrincipal(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF616161),
        ),
        scaffoldBackgroundColor: Color(0xFF616161),
      ),
    );
  }
}
