import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cell_constructor.dart';
import 'life_manager.dart';

class Data extends ChangeNotifier {
  bool isAlive = false;
  Color currentColor = Colors.white;

  void onCellPress() {
    isAlive = true;
    notifyListeners();
  }

  void onOff() {
    LifeManager().toggleLife();
    print('data: $isAlive');
    notifyListeners();
  }

  void determineColor() {
    if (LifeManager().toggleLife() == true) {
      currentColor = Colors.black;
    } else {
      currentColor = Colors.white;
    }
    notifyListeners();
  }
}
