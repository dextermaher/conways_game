import 'package:flutter/material.dart';

class LifeManager {
  bool isAlive = false;

  bool toggleLife() {
    isAlive = !isAlive;
    return isAlive;
  }
}
