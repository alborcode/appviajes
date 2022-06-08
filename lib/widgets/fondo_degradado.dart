import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FondoDegradado extends StatelessWidget {

  String title = "Popular";

  FondoDegradado(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),


      child: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
      ),

      alignment: Alignment(-0.9, -0.6),

    );
  }

}