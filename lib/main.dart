import 'package:flutter/material.dart';
import 'package:midhilesh_raj_web/home.dart';
import 'package:provider/provider.dart';

import 'controllers/color_change.dart';
import 'controllers/home_screen_scroll_controller.dart';
import 'controllers/mousehover_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HoverState(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeScrollState(),
        ),
        ChangeNotifierProvider(
          create: (context) => HoverColorState(),
        ),
        // ChangeNotifierProvider(
        //   // create: (context) => NavigationController(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const Home3(),
      ),
    );
  }
}
