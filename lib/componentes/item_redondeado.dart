import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,

          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://i.ibb.co/CtZ25cJ/previewfile-1900956455.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              'https://i.ibb.co/HqLVQyH/logo-Vogue.png',
              width: 100.0,
            )
          ],
        ),
        SizedBox(width: 11.0)
      ],
    );
  }
}