import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cartao_padrao.dart';
import 'conteudo_icone.dart';
import 'constantes.dart';

enum Sexo { masculino, feminino }

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Sexo? sexoSelecionado;
  int altura = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CALCULADORA IMC',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        sexoSelecionado = Sexo.masculino;
                      });
                    },
                    cor: sexoSelecionado == Sexo.masculino
                        ? kCorAtivaCartaoPadrao
                        : kCorInativaCartaoPadrao,
                    filhoCartao:
                        ConteudoIcone(FontAwesomeIcons.mars, 'MASCULINO'),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoPressionar: () {
                      setState(() {
                        sexoSelecionado = Sexo.feminino;
                      });
                    },
                    cor: sexoSelecionado == Sexo.feminino
                        ? kCorAtivaCartaoPadrao
                        : kCorInativaCartaoPadrao,
                    filhoCartao:
                        ConteudoIcone(FontAwesomeIcons.venus, 'FEMININO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: kCorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ALTURA', style: kDescricaoTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: kNumeroTextStyle,
                      ),
                      Text('cm', style: kDescricaoTextStyle),
                    ],
                  ),
                  Slider(
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                   },
                    activeColor: kCorContainerInferior,
                    inactiveColor: Color(0xFF8D8E98),
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 220.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(cor: kCorAtivaCartaoPadrao),
                ),
                Expanded(
                  child: CartaoPadrao(cor: kCorAtivaCartaoPadrao),
                ),
              ],
            ),
          ),
          Container(
            color: kCorContainerInferior,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kAlturaContainerInferior,
          ),
        ],
      ),
    );
  }
}
