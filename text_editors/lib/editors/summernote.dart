import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';


class Summernote extends StatefulWidget {
  const Summernote({super.key});

  @override
  State<Summernote> createState() => _SummernoteState();
}

class _SummernoteState extends State<Summernote> {
  GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Editores de Texto'),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () async {
                final value = (await _keyEditor.currentState?.getText());
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 5),
                  content: Text(value ?? '-'),
                ));
              },
            )
          ],
        ),
        body: FlutterSummernote(
          hint: 'Your text here...',
          key: GlobalKey<FlutterSummernoteState>(),
          hasAttachment: true,
          customToolbar: """
          [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['insert', ['link', 'table', 'hr']]
          ]
        """,
        ),
      ),
    );
  }
}
