import 'package:flutter/material.dart';
import '../constantes.dart';

class BotaoArredondado extends StatelessWidget {
  BotaoArredondado(@required this.icone, @required this.aoPressionar);

  final IconData icone;
  final VoidCallback? aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: aoPressionar,
      child: Icon(icone),
      shape: CircleBorder(),
      fillColor: Color(0xFF7E7E7E),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
