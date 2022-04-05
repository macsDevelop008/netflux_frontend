import 'package:flutter/material.dart';
import 'package:netflux/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonBar(),
      ],
    );
  }

  Widget cabecera(){
    return Stack(
      children: <Widget>[
        Image.network('https://i.ibb.co/LJPbgBP/Anotaci-n-2019-11-09-202226.png',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black38,
                    Colors.black
                  ]
              )
          ),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'De Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 15.0,),
        Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Terror',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 15.0,),
        Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Anime',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 15.0,),
        Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Cultural',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonBar(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                Icon(Icons.check, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Mi lista',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                )
              ],
            ),
            FlatButton.icon(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: Text('Reproducir'),
            ),
            Column(
              children: [
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Información',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}