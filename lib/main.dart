import 'package:flutter/material.dart';
import 'package:netflux/paginas/inicio.dart';
import 'package:netflux/paginas/reproductor_video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: PlayerVideo(),
        ),
      );
    }

}
