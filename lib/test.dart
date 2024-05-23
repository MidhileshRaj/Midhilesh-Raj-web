import 'package:flutter/material.dart';
import 'package:midhilesh_raj_web/home.dart';

class ControllerTest extends StatelessWidget {
  const ControllerTest({super.key});

  void myfunction(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: myfunction,
              );
            })
      ),
    );
  }
}
