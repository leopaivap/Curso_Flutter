import 'package:flutter/material.dart';
import 'package:nubank_ui/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(   
        primarySwatch: Colors.deepPurple
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

