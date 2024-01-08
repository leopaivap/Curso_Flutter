import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Calculadora',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  width: 400,
                  height: 120,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'visor',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              'C',
                              style: TextStyle(
                                color: Colors.lightBlue[400],
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              'DEL',
                              style: TextStyle(
                                color: Colors.lightBlue[400],
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '%',
                              style: TextStyle(
                                color: Colors.lightBlue[400],
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '/',
                              style: TextStyle(
                                color: Colors.lightBlue[400],
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '7',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '8',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: const Text(
                              '9',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '*',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '4',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '5',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '.',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text(
                              '=',
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.black,
                                fontSize: 28,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
