import 'package:flutter/material.dart';

class Draweer extends StatelessWidget {
  const Draweer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .75,
      child: ListView(
          //children:  [ListTile.divideTiles(tiles: <Widget>[])],
          ),
    );
  }
}
