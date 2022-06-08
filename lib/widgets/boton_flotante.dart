import 'package:flutter/material.dart';
import 'package:appviajes/widgets/widgets.dart';

class BotonFlotante extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BotonFlotanteState();
  }

}


class BotonFlotanteState extends State<BotonFlotante> {

  void onPressedFav(){

    mensaje(context, 'Agregaste a tus Favoritos');

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }

}