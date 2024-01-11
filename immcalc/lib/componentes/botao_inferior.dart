import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoInferior extends StatelessWidget {
  BotaoInferior(@required this.aoPressionar, @required this.tituloBotao);

  final VoidCallback aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: Center(
          child: Text(
            tituloBotao,
            style: kBotaoGrandeTextStyle,
          ),
        ),
        color: kCorContainerInferior,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kAlturaContainerInferior,
      ),
    );
  }
}
