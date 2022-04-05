import 'package:flutter/material.dart';
import 'package:netflux/componentes/cartel_principal.dart';
import '../componentes/item_img.dart';
import '../componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox( height: 10.0,),
          this.listaHorizontal('Programas sobre tilín', ItemImg(), 10),
          SizedBox( height: 10.0,),
          this.listaHorizontal('Seguir Viendo', ItemImg(), 10),
          SizedBox( height: 10.0,),
          this.listaHorizontal('Tendencias', ItemImg(), 10),
          SizedBox( height: 10.0,),
        ],
      ),
      bottomNavigationBar: this.navigationBar(),
    );
  }

  BottomNavigationBar navigationBar(){
      return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: 'Proximamente'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward),
              label: 'Descargas'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Más'
          ),
        ],
      );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 10.0
          ),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            itemCount: cantidad, //base de datos

            itemBuilder: (context, index){
              return item;
            },
          ),
        ),
      ],
    );
  }
}