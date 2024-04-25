import 'package:flutter/material.dart';
import "package:gemini/Controller/days.dart";
import "package:gemini/Controller/togal.dart";
import "package:gemini/Model/text.dart";
import "package:gemini/View/home.dart";
import "package:provider/provider.dart";

MultiProvider resistorProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) =>
              Yesterday(yesterdayiscretion: Discretion.yesterdayDiscretion)),
      ChangeNotifierProvider(
          create: (context) =>
              Today(todayDiscretion: Discretion.todayDiscretion)),
      ChangeNotifierProvider(
          create: (context) =>
              Tomorrow(tomorrowDiscretion: Discretion.tomorrowDiscretion)),
      ChangeNotifierProvider(create: (context) => Toggle())
    ],
    child: const MaterialApp(
      title: "Gemini",
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
