// import 'package:flutter/material.dart';
//
// class Home3test extends StatefulWidget {
//   @override
//   State<Home3test> createState() => _Home3testState();
// }
//
// class _Home3testState extends State<Home3test> {
//   bool isHoveredMacBook = false;
//   bool isHoveredWatteFellow = false;
//   bool isHoverednexttext = false;
//
//   Color get bodyBackgroundColor {
//     if (isHoveredMacBook || isHoveredWatteFellow || isHoverednexttext ) {
//       return Colors.grey;
//     } else {
//       return Colors.white;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//       ),
//       body: Container(
//         color: bodyBackgroundColor,
//         child: ListView(
//           children: [
//             MouseRegion(
//               onEnter: (_) {
//                 setState(() {
//                   isHoveredMacBook = true;
//                 });
//               },
//               onExit: (_) {
//                 setState(() {
//                   isHoveredMacBook = false;
//                 });
//               },
//               child: Container(
//                 child: const Text(
//                   " Mac Book",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 100,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             MouseRegion(
//               onEnter: (_) {
//                 setState(() {
//                   isHoveredWatteFellow = true;
//                 });
//               },
//               onExit: (_) {
//                 setState(() {
//                   isHoveredWatteFellow = false;
//                 });
//               },
//               child: Container(
//                 child: const Text(
//                   "Watte fellow",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 100,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
