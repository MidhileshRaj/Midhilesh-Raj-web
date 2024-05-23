
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/home_screen_scroll_controller.dart';

class ScrollingTextImage extends StatelessWidget {
  const ScrollingTextImage({super.key, required this.imageToShow, required this.nameToShow});
  final String imageToShow;
  final String nameToShow;


  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    controller.addListener(() {
      Provider.of<HomeScrollState>(context, listen: false)
          .updateScrollPosition(controller.position.pixels);
    });
    double s = Provider.of<HomeScrollState>(context).scrollPosition;
    return Container(
      height: MediaQuery.sizeOf(context).height*0.8 ,
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(
                  imageToShow),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            right: s-MediaQuery.of(context).size.width*0.265,
            child:  Text(
              nameToShow,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 300,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

