import 'package:conversor_moedas/app/componentes/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 10),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 50),
              CurrencyBox(),
              SizedBox(height: 10),
              CurrencyBox(),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: Text('CONVERTER'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.amber.shade800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
