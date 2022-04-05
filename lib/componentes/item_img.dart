import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Image.network(
          'https://i.ibb.co/CtZ25cJ/previewfile-1900956455.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}