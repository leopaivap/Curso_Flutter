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
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black45),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.black45),
          ),
          backgroundColor: Colors.grey.shade400,
        ),
      ),
      width: 200,
      height: 90,
    );
  }
}
