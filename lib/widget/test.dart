// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../controllers/color_change.dart';
//
// class HoverableText extends StatelessWidget {
//   final String text;
//   final Color defaultColor;
//   final Color hoverColor;
//
//   HoverableText({
//     required this.text,
//     required this.defaultColor,
//     required this.hoverColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => HoverColorState(),
//       child: Builder(
//         builder: (BuildContext context) {
//           final hoverState = Provider.of<HoverColorState>(context);
//           return Column(
//             children: [
//               Container(width: 100,height: 100,child: Text("hokk"),color:hoverState.isHovered ? hoverColor : defaultColor,),
//               MouseRegion(
//                 onEnter: (_) {
//                   hoverState.setHovered(true);
//                 },
//                 onExit: (_) {
//                   hoverState.setHovered(false);
//                 },
//                 child: Container(
//                   color: hoverState.isHovered ? hoverColor : defaultColor,
//                   child: Text(
//                     text,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 20, // Adjust the font size as needed
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
// class Home2test extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//       ),
//       body: Container(
//         // color: Colors.white,
//         child: ListView(
//           children: [
//             HoverableText(
//               text: "Mac Book",
//               defaultColor: Colors.white,
//               hoverColor: Colors.grey,
//             ),
//             HoverableText(
//               text: "Watte fellow",
//               defaultColor: Colors.white,
//               hoverColor: Colors.blue,
//             ),
//             HoverableText(
//               text: "Your additional text here",
//               defaultColor: Colors.white,
//               hoverColor: Colors.orange,
//             ),
//             // Add more HoverableText widgets here with different text content and hover colors
//           ],
//         ),
//       ),
//     );
//   }
// }
