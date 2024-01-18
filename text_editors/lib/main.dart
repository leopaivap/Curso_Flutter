import 'package:flutter/material.dart';
import 'package:text_editors/home_page.dart';
import 'package:text_editors/editors/quill_html_editor.dart';
import 'package:text_editors/editors/flutter_quill.dart';
import 'package:text_editors/editors/summernote.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade700,
            foregroundColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/flutter_quill': (context) => FlutterQuill(),
        '/quill_html': (context) => QuillHtml(),
        '/summernote': (context) => Summernote()
      },
    ),
  );
}
