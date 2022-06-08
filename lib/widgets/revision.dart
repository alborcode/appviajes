import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Revision extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String nombre = "Varuna Yasas";
  String detalles = "1 review · 5 photos";
  String comentarios = "There is an amazing place in Sri Lanka";

  Revision({
    Key key,
    this.pathImage,
    this.nombre,
    this.detalles,
    this.comentarios
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comentarios,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            fontSize: 13,
            fontWeight: FontWeight.w900,
          ),
      ),

    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
    ),

      child: Text(
        detalles,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),

    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        nombre,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            fontSize: 17.0,
        ),
      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment

      ],
    );

    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),

    );

    return Row (
      children: <Widget>[
        photo,
        userDetails

      ],
    );

  }

}