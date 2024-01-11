import 'package:flutter/material.dart';
import '../constantes.dart';

class ConteudoIcone extends StatelessWidget {
  ConteudoIcone(@required this.icone, @required this.descricao);

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: kTamanhoIcone,
        ),
        SizedBox(
          height: kDistanciaIconeTexto,
        ),
        Text(
          descricao,
          style: kDescricaoTextStyle,
        )
      ],
    );
  }
}
