import 'package:flutter/material.dart';
import 'package:conwaysgame/logic/cells_constructor.dart';
import 'package:conwaysgame/logic/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Widget> localCellList = Cells().createCellList(3);
  double sliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.play_arrow),
              Icon(Icons.skip_next),
              Icon(Icons.pause),
            ],
          ),
          Cells(
            sliderVal: sliderValue,
          ),
          Slider(
            min: 3.0,
            max: 20.0,
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
                //localCellList = Cell().createCellList(value.toInt());
              });
            },
          ),
        ],
      ),
    );
  }
}
