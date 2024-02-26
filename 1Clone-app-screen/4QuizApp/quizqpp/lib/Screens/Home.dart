import 'dart:core';
// import 'dart:core';

import 'package:flutter/material.dart';

import 'Java.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> SubjectList = ["Java", "Python", "Dart"];
  // ignore: non_constant_identifier_names
  List IconList = [Icons.javascript, Icons.javascript, Icons.javascript];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 45,
          ),
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 24, 59, 95),
          actions: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.account_circle,
                size: 50,
              ),
            ),
            const SizedBox(width: 7)
          ],
          toolbarHeight: 100,
        ),
        backgroundColor: const Color.fromARGB(255, 10, 20, 29),
        body: ListView.builder(
            itemCount: SubjectList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    // Navigate to SecondPage when the container is tapped
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JavaScreen()));
                  },
                  child: Container(
                    height: 100,
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 30),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 30, left: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 140, 136, 149),
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.donut_large_sharp,
                          color: const Color.fromARGB(255, 167, 141, 141),
                          size: 39,
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          SubjectList[index],
                          style: TextStyle(
                            fontSize: 40,
                            color: const Color.fromARGB(255, 167, 141, 141),
                          ),
                        )
                      ],
                    ),
                  ));
            }));
  }
}
