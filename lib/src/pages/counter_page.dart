import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {

  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<Counterpage> {

  final  _stytext = new TextStyle(fontSize: 40);
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Primer Programa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Taps: ', style: _stytext ),
            Text('$_counter', style: _stytext),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _counter++;
          setState(() {

          });
        },
      ),
    );
  }
}
