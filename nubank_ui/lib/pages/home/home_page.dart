import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_ui/pages/home/account/account_page.dart';
import 'package:nubank_ui/pages/home/actions/menu_itens_page.dart';
import 'package:nubank_ui/pages/home/creditsCard/credit_card_page.dart';
import 'package:nubank_ui/pages/home/creditsCard/my_credits_cards_page.dart';
import 'package:nubank_ui/pages/home/findOut/find_out_page.dart';
import 'package:nubank_ui/pages/home/investiments/investiments_page.dart';
import 'package:nubank_ui/pages/home/model/header.dart';
import 'package:nubank_ui/pages/home/notification/notification_page.dart';
import 'package:nubank_ui/pages/home/security/security_life_page.dart';
import 'package:nubank_ui/pages/home/shopping/shopping_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.6),
              MyCreditsCards(),
              Divider(thickness: 1.6),
              Notifications(),
              Divider(thickness: 1.6),
              CreditCard(),
              Divider(thickness: 1.6),
              Investiments(),
              Divider(thickness: 1.6),
              SecurityLife(),
              Divider(thickness: 1.6),
              Shopping(),
              Divider(thickness: 1.6),
              FindOut(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
