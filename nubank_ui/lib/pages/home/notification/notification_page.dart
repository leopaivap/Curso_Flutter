import 'package:flutter/material.dart';
import 'package:nubank_ui/utils/colors_standard.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _tipCard(
            text: TextSpan(children: [
              TextSpan(text: 'Seu ', style: blackLetter),
              TextSpan(text: 'Informe de \nrendimentos ', style: purpleLetter),
              TextSpan(text: 'de 2023 ja está ....', style: blackLetter),
            ]),
          ),
          _tipCard(
              text: TextSpan(children: [
            TextSpan(text: 'Chegou o ', style: blackLetter),
            TextSpan(
                text: 'débito \nautomático da fatura do ...',
                style: purpleLetter),
          ])),
          _tipCard(
              text: TextSpan(children: [
            TextSpan(text: 'Conheça ', style: blackLetter),
            TextSpan(text: 'Nubank Vida', style: purpleLetter),
            TextSpan(
                text: 'um seguro simples\n e que cab...', style: blackLetter),
          ])),
          _tipCard(
              text: TextSpan(children: [
            TextSpan(
                text: 'Salve seus amigos\nda burocracia.', style: blackLetter),
            TextSpan(text: 'Faça um ...', style: purpleLetter),
          ])),
        ],
      ),
    );
  }

  _tipCard({required TextSpan text}) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 20,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: text,
      ),
    );
  }
}
