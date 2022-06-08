import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'boton.dart';

class DescripcionLugar extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescripcionLugar(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container (
      margin: EdgeInsets.only(
          top: 353.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color:  Color(0xFFf2C611),
      ),
    );

    final star_border = Container (
      margin: EdgeInsets.only(
          top: 353.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star_border,
        color:  Color(0xFFf2C611),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
        top: 353.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color:  Color(0xFFf2C611),
      ),
    );

    final title_stars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),

        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half
          ],
        )


      ],
    );

    final description = Container(
      margin: new EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0

      ),
      child: new Text(
        descriptionPlace,
        style: GoogleFonts.lato(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        Boton("Navigate")
      ],
    );


  }

}