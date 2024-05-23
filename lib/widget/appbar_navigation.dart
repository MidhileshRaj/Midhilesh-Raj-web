import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/mousehover_controller.dart';

class MyAppBarNavItem extends StatelessWidget {
  final int index;
  final String item;
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerExitEvent)? onExit;

  // Function(PointerHoverEvent)? onHover;
  const MyAppBarNavItem(
      {super.key,
        required this.onEnter,
        required this.onExit,
        required this.index,
        required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(onEnter: onEnter, onExit: onExit, child: Text(item,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        AnimatedOpacity(
            opacity: Provider.of<HoverState>(context).selectedIndex == index
                ? 1.0
                : 0.0,
            duration: const Duration(milliseconds: 300),
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Transform.translate(
                offset: Offset(Provider.of<HoverState>(context).selectedIndex == index ? 2.0 : 5.0, 2.0),
                child: const Icon(Icons.arrow_back),
              ),
            ),)
      ],
    );
  }
}