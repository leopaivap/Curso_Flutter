import 'package:flutter/material.dart';

class FormularioLogin extends StatefulWidget {
  const FormularioLogin({super.key});

  @override
  State<FormularioLogin> createState() => _FormularioLoginState();
}

class _FormularioLoginState extends State<FormularioLogin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
                onChanged: (text) {
                  print(text);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                )),
            SizedBox(height: 10),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                )),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text('Entrar'),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
    ;
  }
}
