import 'package:flutter/material.dart';
import 'package:text_editors/componentes/botao_retangular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Editores de Texto',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 100.0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Divider(
              color: Colors.white,
              thickness: 1,
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotaoRetangular(
                    nomeBotao: 'Flutter Quill', rotaBotao: '/flutter_quill'),
                SizedBox(height: 20),
                BotaoRetangular(
                    nomeBotao: 'Quill Html', rotaBotao: '/quill_html'),
                SizedBox(height: 20),
                BotaoRetangular(
                    nomeBotao: 'Summernote', rotaBotao: '/summernote'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
