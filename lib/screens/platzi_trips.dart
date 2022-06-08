import 'package:flutter/material.dart';
import '../widgets/stack_viajes.dart';
import '../widgets/buscar_viajes.dart';
import '../widgets/perfil.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    StackViajes(),
    BuscarViajes(),
    Perfil()
  ];

  void onTapTapped(int index){

    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return

      Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: ("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ("")
              ),
            ]
        ),
      ),
    );
  }

}