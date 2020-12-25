import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conwaysgame/logic/data.dart';
import 'life_manager.dart';

class Cell extends StatelessWidget {
  final Color color;
  Cell({this.color});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color),
      child: OutlineButton(
        borderSide: BorderSide(
          color: Colors.black,
        ),
        onPressed: () {
          Provider.of<Data>(context, listen: false).determineColor();
          Provider.of<Data>(context, listen: false).onOff();
          print(LifeManager().isAlive);
        },
      ),
    );
  }
}
//
//void switchPositions() {
//  isAlive = !isAlive;
//}
