import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main() => runApp(const QuizeApp());

class QuizeApp extends StatelessWidget {
  const QuizeApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
