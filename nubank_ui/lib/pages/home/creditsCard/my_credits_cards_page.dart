import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_ui/utils/colors_standard.dart';

class MyCreditsCards extends StatelessWidget {
  const MyCreditsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          const SizedBox(width: 12),
          const Text(
            'Meus Cartões',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
