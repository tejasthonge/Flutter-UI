


import "package:findplante/screens/s1.dart";
import "package:flutter/material.dart";
// import "package:flutter/rendering.dart";

void main()=> runApp(const MyApp());


class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Screen1(),
      
    );
  }
}