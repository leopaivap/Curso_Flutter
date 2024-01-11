import 'package:flutter/material.dart';
import 'package:immcalc/componentes/cartao_padrao.dart';
import 'package:immcalc/constantes.dart';

import '../componentes/botao_inferior.dart';

class TelaResultados extends StatelessWidget {
  TelaResultados(@required this.resultadoIMC, @required this.resultadoTexto,
      @required this.interpretacao);

  final String resultadoIMC, resultadoTexto, interpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA IMC'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Resultado',
              style: kTituloTextStyle,
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultadoTexto, style: kResultadoTextStyle),
                  Text(
                    resultadoIMC.toUpperCase(),
                    style: kIMCTextStyle,
                  ),
                  Text(
                    interpretacao,
                    style: kCorpoTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BotaoInferior(() {
            Navigator.pop(context);
          }, 'RECALCULAR'),
        ],
      ),
    );
  }
}
