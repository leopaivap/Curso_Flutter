import 'package:flutter/material.dart';

class CurrencyBox extends StatefulWidget {
  const CurrencyBox({super.key});

  @override
  State<CurrencyBox> createState() => _CurrencyBoxState();
}

class _CurrencyBoxState extends State<CurrencyBox> {
  String selectedCurrency = 'Real';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              value: selectedCurrency,
              iconEnabledColor: Colors.amber,
              items: [
                DropdownMenuItem(
                  child: Text('Real'),
                  value: 'Real',
                ),
                DropdownMenuItem(
                  child: Text('Dolar'),
                  value: 'Dolar',
                ),
                DropdownMenuItem(
                  child: Text('Euro'),
                  value: 'Euro',
                ),
                DropdownMenuItem(
                  child: Text('Bitcoin'),
                  value: 'Bitcoin',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value.toString();
                });
              },
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
          ),
        ),
      ],
    );
  }
}
