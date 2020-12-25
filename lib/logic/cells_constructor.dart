import 'package:flutter/material.dart';
import 'cell_constructor.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class Cells extends StatelessWidget {
  final double sliderVal;
  Cells({this.sliderVal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.count(
        crossAxisCount: sliderVal.ceil(),
        children: createCellList(sliderVal.ceil()),
      ),
    );
  }

  List<Cell> createCellList(int num) {
    int totalCells = num * num;
    List<Cell> cellList = [];
    for (int i = 0; i < totalCells; i++) {
      cellList.add(Cell());
    }
    return cellList;
  }

  void flipFlop(int num, index, context) {
    List<Cell> cellList = createCellList(num);
    Color color = Provider.of<Data>(context, listen: false).determineColor();
    cellList[index].color = color;
  }
}
