import 'package:flutter/material.dart';

class ContadorTaps extends StatefulWidget {

  @override
  createState() => _ContadorTapsState();
  
}


class _ContadorTapsState extends State<ContadorTaps> {

    final _estiloTexto = new TextStyle(fontSize: 25);
    int _conteo = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: _estiloTexto, ),
            Text('$_conteo', style: _estiloTexto, ),
          ],),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()

    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 15.0,),
        FloatingActionButton(onPressed: _restarConteo, child: Icon(Icons.remove),),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _resetConteo, child: Icon(Icons.exposure_zero),),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sumarConteo, child: Icon(Icons.add),),
        SizedBox(width: 15.0,)
      ],); 
     
  }

  void _sumarConteo() {
    setState( () => _conteo++ );
  }

  void _restarConteo() {
    setState( () => _conteo = _conteo >= 1 ? _conteo - 1 : 0 );
  }

  void _resetConteo() {
    setState( () => _conteo = 0);
  }

}