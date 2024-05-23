import 'package:flutter/material.dart';

class HoverState extends ChangeNotifier {
  bool _isHovering = false;
  int myindex =-1;

  bool get isHovering => _isHovering;

  void handleHover(bool isHovering) {
    _isHovering = isHovering;
    notifyListeners();
  }

bool isHoerved= false;
  int selectedIndex=99;

  chaneIndex(int index){
    selectedIndex=index;
    notifyListeners();

  }


}