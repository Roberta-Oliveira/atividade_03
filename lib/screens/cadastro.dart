import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Item"),
        actions: [
          TextButton(
              onPressed: () => {
                    Navigator.of(context).pushReplacementNamed('/lista')
                  },
              child: Text(
                "Salvar",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Nome')),
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Descrição do Item')),
            ),
          ],
        ),
      ),
    );
  }
}
