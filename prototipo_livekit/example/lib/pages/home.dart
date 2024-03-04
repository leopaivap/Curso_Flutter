import 'package:flutter/material.dart';
import 'package:livekit_example/pages/connect.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Selecione um opção: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  connect(context, ConnectionType.stream);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(217, 217, 217, 0.75)),
                  child: const Text('Criar Live'),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  connect(context, ConnectionType.watch);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(217, 217, 217, 0.75)),
                  child: const Text('Assistir Live'),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  connect(context, ConnectionType.watchPlus);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(217, 217, 217, 0.75)),
                  child: const Text('Assistir Mentoria'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void connect(BuildContext context, ConnectionType connection) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => ConnectPage(conectionType: connection)),
    );
  }
}
