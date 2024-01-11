import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({required this.cor, this.filhoCartao, this.aoPressionar});

  final Color cor;
  final Widget? filhoCartao;
  final VoidCallback? aoPressionar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: filhoCartao,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cor,
        ),
      ),
    );
  }
}
