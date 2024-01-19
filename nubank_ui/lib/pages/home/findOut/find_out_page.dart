import 'package:flutter/material.dart';
import 'package:nubank_ui/pages/home/findOut/models/card_find_out.dart';

class FindOut extends StatelessWidget {
  const FindOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
           _findOutCards(),
        ],
      ),
    );
  }

  _findOutCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 20,
        children: [
        CardFindOut(
          imagem: 'assets/image/borboleta.jpg',
          buttonText: 'Conhecer',
          description: 'Sua liberdade financeira\ncomeça com você ...',
          title: 'Parcele compras no app',
        ),
          CardFindOut(
          imagem: 'assets/image/estrada.jpg',
          buttonText: 'Conhecer',
          description: 'Sua liberdade financeira\ncomeça com você ...',
          title: 'Portabilidade de salário',
        ),
        CardFindOut(
          imagem: 'assets/image/folhas.jpg',
          buttonText: 'Indicar',
          description: 'Mostre aos seus amigos \ncomo é fácil ter uma vida ...',
          title: 'Indique seus amigos',
        ),
      ]),
    );
  }
}
