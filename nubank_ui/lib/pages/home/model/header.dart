import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_ui/controller/controller_home_page.dart';
import 'package:nubank_ui/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(height: 32),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: secondaryPurple),
        child: IconButton(
          onPressed: () {},
          icon: new Icon(
            MdiIcons.accountOutline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return IconButton(
                onPressed: () => controllerHomePage.showValue(),
                icon: new Icon(
                  controllerHomePage.eyesValue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOff,
                  color: Colors.white,
                ),
              );
            }),
        IconButton(
          onPressed: () {},
          icon: new Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: new Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        'Olá, Leonardo',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
