import 'package:flutter/material.dart';
import 'package:running_square/presentation/mooving_square_screen/mooving_screen.dart';
import 'package:running_square/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: MoovingPageScreen(),
    );
  }
}
