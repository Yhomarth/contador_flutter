



import 'package:flutter/material.dart';

// las escritas por nosotros
import 'package:contador/src/pages/contador_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build( context ){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorTaps()
        ,),
      );
  }

}