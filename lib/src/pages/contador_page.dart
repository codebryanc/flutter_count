import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override

  // createState() {
  //   return _ContadorPageState(); // el new es opcional
  // }

  // Esto es lo mismo
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  // final nos permite definir constantes
  final _estiloTexto = new TextStyle(fontSize: 18); // el guión bajo es para dejar las propiedades privadas
  int _counter = 0;

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
        children: <Widget>[Text('Número de clicks:', style: _estiloTexto), Text('$_counter', style: _estiloTexto)], // '$counter' => interpolación en DART o tambien podemos hacer counter.toString()
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: this.presionado, // null  = diabled: true; // presionado its the function
          child: Icon(Icons.add) //Text('hi'),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  presionado() {
    // Esto nos permite hacer render de la pagina, pero ahora con estado
    setState(() {
      // Una manera de incrementar
      this._counter = this._counter + 1;

      // Es lo mismo
      this._counter++;
    });
  }
}
