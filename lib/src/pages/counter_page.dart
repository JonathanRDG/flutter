import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Counterpage extends StatefulWidget {

  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<Counterpage> {
  final  _stytext = new TextStyle(fontSize: 40);
  int _counter = 0;
  bool _validation= false;
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
      floatingActionButton: _createBotton()
    );
  }

  Widget _createBotton(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 30),
    FloatingActionButton(child: Icon(Icons.add),onPressed:
        () {
      _counter++;
      setState(() {});
    },),
    SizedBox(width: 5),
    FloatingActionButton(child: Icon(Icons.remove),onPressed:
        () {
          (_counter<=0)? _counter=0:_counter--;
      setState(() {});
    },
    ),
    SizedBox(width: MediaQuery.of(context).size.width*.42),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed:
            () {
          _counter=0;
          setState(() {});
        },
        ),
        SizedBox(width: 5),
      ],
    );



  }
}
