import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      // showSemanticsDebugger: false
      debugShowCheckedModeBanner: false,
      home: const PaytmHomeScreen(),
    );
  }
}

class PaytmHomeScreen extends StatefulWidget {
  const PaytmHomeScreen({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 27),
          child: CircleAvatar(
              // maxRadius: 5,
              // minRadius: 2,
              child: ClipOval(
            child: Image.asset(
              "lib/assets/menu.jpg",
              // height: 20,2Z
              // width: 20,
              fit: BoxFit.contain,
            ),
          )),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 30, bottom: 0),
          padding: EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Icon(Icons.access_alarm),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "Important Update",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(42)),
        ),
        toolbarHeight: 90,
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 33,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                      size: 33,
                    )),
              ],
            ),
          )
        ],
      ),
      body:Center(

        child: Container(

          child: ListView(
            // padding: EdgeInsets.only(left: 10,right: 10),
            children: [
              Container(
                height:150,
                // width:double.infinity,
                width: double.infinity,
                child: ListView(
                  padding: EdgeInsets.all(12.5),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                    // width: 300,
                    // height: 300,
                    color: Colors.orange,
                    child: Image.asset(
                      "lib/assets/l1/l1.jpeg",
                      // "lib/assets/l1/l1.jpeg",
                      // "lib/assets/menu.jpg",
                    ),
                  ),
                    Container(
                    // width: 300,
                    // height: 300,
                    color: Colors.orange,
                    child: Image.asset(
                      "lib/assets/l1/l2.jpeg",
                      // "lib/assets/l1/l1.jpeg",
                      // "lib/assets/menu.jpg",
                    ),
                  ),
                    Container(
                    // width: 300,
                    // height: 300,
                    color: Colors.orange,
                    child: Image.asset(
                      "lib/assets/l1/l3.jpeg",
                      // "lib/assets/l1/l1.jpeg",
                      // "lib/assets/menu.jpg",
                    ),
                  ),
                    Container(
                    // width: 300,
                    // height: 300,
                    color: Colors.orange,
                    child: Image.asset(
                      "lib/assets/l1/l4.jpeg",
                      // "lib/assets/l1/l1.jpeg",
                      // "lib/assets/menu.jpg",
                    ),
                  ),

                  ],
                ),
              ),


              Container(
                height: 300,

                decoration: BoxDecoration(

                  gradient: LinearGradient(
                    
                    colors: [

                    Colors.white,
                    Color.fromRGBO(101, 188, 228, 1),
                    const Color.fromARGB(255, 101, 188, 228)
                  ],
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter
                  )
                ),
  
                child: Column(

                  children: [

                    Container(
                      child: Row(
                      children: [

                        Text("BANKING & PAYMENTS",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900
                        
                        )
                        ),
                        Spacer(),
                        Text(
                          "POWERD BY ",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "paytm",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                        Text(
                          "payments",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        
                        Text(
                          "bank",
                          style: TextStyle(
                            fontSize:8,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                          ],
                        )


                      ]
                        ),
                        
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                      Column(
                        children: [
                          FloatingActionButton.small(onPressed: (){},
                    child: Icon(
                      Icons.qr_code_scanner,
                      size: 27,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    ),
                    const SizedBox(height: 7,),
                    Text(
                      "Scan &",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Pay",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                        ],
                      ),
                      Column(
                        children: [
                          FloatingActionButton.small(onPressed: (){},
                    child: Icon(
                      Icons.add_to_home_screen_rounded,
                      size: 27,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    ),
                    const SizedBox(height: 7,),
                    Text(
                      "To Mobile",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "or Contact",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                        ],
                      ),
                      Column(
                        children: [
                          FloatingActionButton.small(onPressed: (){},
                    child: Icon(
                      Icons.chrome_reader_mode_outlined,
                      size: 27,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    ),
                    const SizedBox(height: 7,),
                    Text(
                      "Link RuPay",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Card To UPI",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                        ],
                      ),
                      Column(
                        children: [
                          FloatingActionButton.small(onPressed: (){},
                    child: Icon(
                      Icons.account_balance_outlined,
                      size: 27,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    ),
                    const SizedBox(height: 7,),
                    Text(
                      "To Bank",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "or Self A/C",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                        ],
                      ),
                    ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(

                          children: [
                            

                          ],
                        )
                      ],
                    )
                    
                    
                      ],
                    
                      )
                    
                    )

                ]
                ),
              )
      
            
      
          )
        );      
      
    
  }
}
