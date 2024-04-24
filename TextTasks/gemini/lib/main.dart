import 'package:flutter/material.dart';
import 'package:gemini/Controller/muliproviders.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return resistorProvider(); //it returns the Muliprovider
  }
}
