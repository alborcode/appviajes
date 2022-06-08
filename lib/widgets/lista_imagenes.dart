import 'package:flutter/material.dart';
import 'card_imagen.dart';

class ListaImagenes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImagen("assets/img/beach_palm.jpeg"),
          CardImagen("assets/img/mountain.jpeg"),
          CardImagen("assets/img/mountain_stars.jpeg"),
          CardImagen("assets/img/river.jpeg"),
          CardImagen("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }

}