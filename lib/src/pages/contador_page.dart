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
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // _ es para decir que es privado
  void _presionado(action) {
    // Esto nos permite hacer render de la pagina, pero ahora con estado
    // Solo existe dentro de los StatefulWidgets
    setState(() {
      // Una manera de incrementar
      // this._counter = this._counter + 1;

      // Es lo mismo
      if (action == '+') {
        this._counter++;
      } else if (action == '-') {
        this._counter--;
      } else if (action == '0') {
        this._counter = 0;
      }
    });
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: () => {this._presionado('-')}),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: () => {this._presionado('0')}),
        SizedBox(width: 6),
        FloatingActionButton(child: Icon(Icons.add), onPressed: () => {this._presionado('+')}),
        SizedBox(width: 6)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
