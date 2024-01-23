import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _color = Colors.grey;
  late BoxDecoration _myDecoration;

  @override
  void initState() {
    super.initState();
    _myDecoration = BoxDecoration(color: _color);
  }

  void _updateDecoration() {
    _myDecoration = (_color == Colors.grey)
        ? BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(15),
          )
        : BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(25),
          );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              decoration: _myDecoration,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _color =
                        (_color == Colors.grey) ? Colors.blueGrey : Colors.grey;
                    _updateDecoration();
                  });
                },
                child: Container(
                  child: const Text(
                    'Testando container animado...',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  width: 230,
                  height: 230,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
