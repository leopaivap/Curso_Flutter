import 'package:flutter/material.dart';
import 'package:text_editors/home_page.dart';
import 'package:text_editors/quill_html_editor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/quill_editor' : (context) => QuillHtml()
      },
      
    ),
  );
}
