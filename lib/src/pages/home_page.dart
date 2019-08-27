import 'package:flutter/material.dart';

//import '';

class HomePage extends StatelessWidget{
  final  estilotexto = new TextStyle(fontSize: 40);
  final contador = 0;
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
                Text('Numero de Taps: ', style: estilotexto ),
                Text('$contador', style: estilotexto),
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_box),
      onPressed: () {
         // contador=contador+1;
      },
    ),
    );
  }
}