import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/stack_viajes.dart';
import '../widgets/buscar_viajes.dart';
import '../widgets/perfil.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: ("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  label: ("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: ("")
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => StackViajes(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => BuscarViajes(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Perfil(),
              );
              break;
            default:
              return null;
          }

        },
      ),
    );
  }

}