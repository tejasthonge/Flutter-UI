
import 'package:cafehashtag/screens/Database.dart';

import 'package:cafehashtag/screens/screen5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Scree6Orders extends StatefulWidget {
  const Scree6Orders({super.key});

  @override
  State createState() => _Screen5State();
}

List oraderList = [];
bool isOrdered = false;

class _Screen5State extends State {
  int totalOrderCount = 0;
  @override
  void initState() {
    super.initState();
    initializeOrderList();
  }

  Future<void> initializeOrderList() async {
    oraderList = await getOrdersInDB();
    setState(() {
      // initializeOrderList();
      totalOrderCount = oraderList.length;
       isOrdered = totalOrderCount > 0;
      // initializeOrderList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF100A29),
        body: Padding(
            padding: const EdgeInsets.only(

                // top: 40,
                ),
            child: Column(children: [
                          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 70,
            
              // left: 40
            ),
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Scree5Menu()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 160),
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 30, right: 30),
                    alignment: Alignment.center,
                    height: 80,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(53, 244, 67, 54),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(0, 235, 235, 240),
                            offset: Offset(2, 3),
                            spreadRadius: 23,
                          )
                        ]),
                    child: const Text(
                      "Menu",
                      style: TextStyle(
                          color: Color.fromARGB(161, 149, 103, 103),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Scree6Orders()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 30, right: 30),
                    alignment: Alignment.center,
                    height: 80,
                    width: 230,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: const Text(
                      "ORDERS",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
                          ),
                          (isOrdered)
              ? Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0),
            
                    width: double.infinity,
                    // height: 40,
                    child: ListView.builder(
                      itemCount: oraderList.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          child: Slidable(
                            startActionPane: ActionPane(
                              motion: const DrawerMotion(),
                              extentRatio: 0.3,
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color.fromARGB(
                                                170, 166, 166, 166),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                
                                                deleteOrder(oraderList[index].id);
                                                initializeOrderList();
                                              });
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 43,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Count : ${foodMenuList[index].oraderedItemCount} ",
                                          // "",
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              // width: double.infinity,
                              height: 100,
                              decoration: const BoxDecoration(
                                  // color: Color(0xFFA6A6A6),
                                  // color:
            
                                  ),
            
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              170, 166, 166, 166),
                                        ),
                                        child: Image.asset(
                                          oraderList[index].foodImgSrs,
                                          // "",
                                        ),
                                      )),
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 38, 32, 65),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                // flex: 5,
                                                child: Expanded(
                                                  child: Container(
                                                    // width: Checkbox.width,
                                                    width: 100,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2,
                                                            bottom: 2,
                                                            left: 5,
                                                            right: 5),
                                                    decoration: const BoxDecoration(
                                                        color: Color(
                                                            0XFFE5B061),
                                                        borderRadius: BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(
                                                                    100),
                                                            bottomRight: Radius
                                                                .circular(
                                                                    100))),
            
                                                    child: Text(
                                                      oraderList[index].foodName,
                                                      // "",
                                                      style: const TextStyle(
                                                          color: Color
                                                              .fromARGB(
                                                                  255,
                                                                  231,
                                                                  215,
                                                                  215),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                // flex: 5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .end,
                                                  children: [
                                                    Text( 
                                                      "prize : ${(oraderList[index].foodPrize)*oraderList[index].oraderedItemCount}",
                                                      style: const TextStyle( 
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold
                                                      ),
                                                    )
                                                    
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
            
                                          //
                                          Container(
                                            height: 40,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 11, 42, 68),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        6)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Container(
                  width: double.infinity,
                  // height: 400,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 50,
                      // ),
            
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Scree5Menu()));
                        },
                        child: Image.asset(
                            "lib/assets/images/ordernow Background Removed.png"),
                      )
                    ],
                  ))
                        ])));
  }
}
