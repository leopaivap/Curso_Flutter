import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_ui/controller/controller_home_page.dart';
import 'package:nubank_ui/utils/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 16,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisponible(),
           _installments(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cartão de Crédito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura Atual',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.crediCartValue,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      'Limite disponível de R\$ 4.000,00',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar Compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
