import 'package:flutter/material.dart';
import 'revision.dart';

class ListaRevisiones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Revision(
            pathImage: "assets/img/people.jpg",
            nombre: "Varuna Yasas",
            detalles: "1 review · 5 photos",
            comentarios: "There is an amazing place in Sri Lanka",
        ),
        Revision(
            pathImage: "assets/img/ann.jpg",
            nombre: "Anahí Salgado",
            detalles: "2 review · 5 photos",
            comentarios: "There is an amazing place in Sri Lanka"
        ),
        Revision(
            pathImage: "assets/img/girl.jpg",
            nombre: "Gissele Thomas",
            detalles: "2 review · 2 photos",
            comentarios: "There is an amazing place in Sri Lanka"
        ),
      ],
    );
  }

}