import 'package:flutter/material.dart';

class BotaoRetangular extends StatelessWidget {
  final String rotaBotao, nomeBotao;

  const BotaoRetangular({required this.rotaBotao, required this.nomeBotao});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, rotaBotao);
        },
        child: Text(
          nomeBotao,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      width: 200,
      height: 100,
    );
  }
}
