import 'package:flutter/material.dart';

void main() {
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('imagens/foto.png'),
              ),
              Text(
                'Leonardo Paiva',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'DESENVOLVEDOR FLUTTER',
                style: TextStyle(
                  fontFamily: 'Source Code Pro',
                  color: Colors.deepOrange.shade100,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.deepOrange.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      '+55 1234 2345',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: 'Source Code Pro',
                          fontSize: 20),
                    )),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    '@email.email',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: 'Source Code Pro',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
