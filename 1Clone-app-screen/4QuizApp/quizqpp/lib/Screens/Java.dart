import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../QuizList/java1.dart';

class JavaScreen extends StatefulWidget {
  const JavaScreen({super.key});

  @override
  State<JavaScreen> createState() => _JavaState();
}

class _JavaState extends State<JavaScreen> {
  int QIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Java Quiz",
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
        body: Column(
          children: [
            Container(
                // height: 140,
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: 25,
                  left: 15,
                  right: 15,
                ),
                margin: EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(30, 132, 119, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "No: ",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      SetQuaition().QuiLi[0],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(
                top: 0,
                left: 10,
                right: 10,
              ),
              // margin: EdgeInset,
              height: 500,
              child: ListView.builder(
                // itemCount: SetQuaition().ShowAnsList[QIndex].length,
                itemCount: SetQuaition().ShowAnsList[QIndex].length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 20, right: 0, left: 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shadowColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 79, 142, 128))),
                        onPressed: () {
                          
                        },
                        child: Text(
                          SetQuaition().ShowAnsList[QIndex][index],
                          style: TextStyle(
                            fontSize: 26,
                            color: Color.fromARGB(255, 210, 255, 85),
                          ),
                        )),
                  );
                },
              ),
            )
          ],
        ));
  }
}
