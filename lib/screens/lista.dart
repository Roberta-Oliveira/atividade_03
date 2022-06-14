import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itens de jogo'),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).pushReplacementNamed('/')
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Item ${index + 1}"),
            trailing: Text("Espada Excalibur"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.of(context).pushReplacementNamed('/cadastro')
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
