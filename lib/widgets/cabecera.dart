import 'package:flutter/material.dart';
import 'fondo_degradado.dart';
import 'lista_imagenes.dart';

class Cabecera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        FondoDegradado("Bienvenido"),
        ListaImagenes()
      ],
    );
  }

}