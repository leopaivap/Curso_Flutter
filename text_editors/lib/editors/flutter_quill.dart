import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter/material.dart';

class FlutterQuill extends StatefulWidget {
  const FlutterQuill({super.key});

  @override
  State<FlutterQuill> createState() => _FlutterQuillState();
}

class _FlutterQuillState extends State<FlutterQuill> {
  QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Editores de Texto'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                controller: _controller,
                sharedConfigurations: const QuillSharedConfigurations(
                  locale: Locale('de'),
                ),
              ),
            ),
            Expanded(
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  controller: _controller,
                  readOnly: false,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
