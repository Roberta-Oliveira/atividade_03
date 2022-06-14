import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.gamepad,
              size: 72,
              color: Colors.purple,
            ),
            const Text(
              'Alfheim',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('E-mail')),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Password')),
            ),
            SizedBox(height: 18),
            RaisedButton(
              onPressed: () => {
                Navigator.of(context).pushReplacementNamed('/lista')
              },
              child: Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
