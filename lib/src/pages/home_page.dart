import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final nos permite definir constantes
  final estiloTexto = new TextStyle(fontSize: 18);
  final int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('Número de clicks:', style: estiloTexto), Text('$counter', style: estiloTexto)], // '$counter' => interpolación en DART o tambien podemos hacer counter.toString()
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: this.presionado, // null  = diabled: true; // presionado its the function
          child: Icon(Icons.add) //Text('hi'),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  presionado() {
    //this.counter = this.counter + 1;
  }
}
