import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gemini/Model/days.dart';
import 'package:gemini/Model/text.dart';
import 'package:gemini/Model/togal.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 163, 172, 170),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 209, 231, 227),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 1),
                      color: Color.fromARGB(255, 32, 36, 37),
                      blurRadius: 10,
                      spreadRadius: 0)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  CommonText.title,
                  style: const TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
                Container(
                  height: 45,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {
                              Provider.of<Toggle>(context, listen: false)
                                  .toggleYesterday();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 45,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                width: 2,
                                color: Colors.black45,
                              ))),
                              child: Text(
                                CommonText.tab1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color:
                                        Provider.of<Toggle>(context).isYesterday
                                            ? Colors.purple
                                            : const Color.fromARGB(
                                                143, 155, 39, 176)),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {
                              Provider.of<Toggle>(context, listen: false)
                                  .toggleToday();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 45,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                width: 2,
                                color: Colors.black45,
                              ))),
                              child: Text(
                                CommonText.tab2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Provider.of<Toggle>(context).isToday
                                        ? Colors.purple
                                        : const Color.fromARGB(
                                            143, 155, 39, 176)),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {
                              Provider.of<Toggle>(context, listen: false)
                                  .toggleTomorrow();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 45,
                              decoration: const BoxDecoration(),
                              child: Text(
                                CommonText.tab3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color:
                                        Provider.of<Toggle>(context).isTomorrow
                                            ? Colors.purple
                                            : const Color.fromARGB(
                                                143, 155, 39, 176)),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Expanded( //this is used for moblie screen 
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: SingleChildScrollView(  //for scrrolin in mobile phone
                      child: Text(
                        Provider.of<Toggle>(context).isYesterday
                            ? Provider.of<Yesterday>(context).yesterdayiscretion
                            : Provider.of<Toggle>(context).isToday
                                ? Provider.of<Today>(context).todayDiscretion
                                : Provider.of<Toggle>(context).isTomorrow
                                    ? Provider.of<Tomorrow>(context)
                                        .tomorrowDiscretion
                                    : "",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
