


import 'package:cafehashtag/screens/screen5.dart';
import 'package:cafehashtag/screens/screen6.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget{


  const Screen4({super.key});

  @override 
  State createState ()=> _Screen4State();
}

class _Screen4State extends State{

  @override 
  Widget build (BuildContext context){

  return Scaffold(

    backgroundColor: const Color(0xFF100A29),
    body: Padding(

      padding: const EdgeInsets.only(
       top:100,
          left: 30,
          right: 30,

      ),

      child: Column( 
      
        children: [
      
           Image.asset(
              "lib/assets/images/newLog.png",
              // height: 200,
            ),
      
            const  Text( 
                  
              "SPECIAL FOR VEG LOVERS",
              style: TextStyle(
                color: Color.fromARGB(255, 148, 143, 143),
                
              ),
            ),
      
            //-------
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 170),
              child: Stack(
              alignment: Alignment.topLeft,
                children: [ 
              
              GestureDetector (
                
                 onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context) =>const Scree6Orders())
                      );
                    },
      
                 child: Container( 
                 
                      padding: const EdgeInsets.only(
                        top: 2,
                        bottom: 2,
                        left: 30,
                        right: 30
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration( 
                        color: Colors.green,
                        borderRadius: BorderRadius.only( 
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                                 
                      ),
                      child: const Text(
                        "ORDERS",
                        style: TextStyle( 
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                        ),
                    ),
               ),
      
      
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context) =>const Scree5Menu())
                      );
                    },
      
                    child: Container( 
                      margin: const EdgeInsets.only(left: 170),
                      padding: const EdgeInsets.only(
                        top: 2,
                        bottom: 2,
                        left: 30,
                        right: 30
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration( 
                        color:  Color(0xFF100A29),
                        borderRadius: BorderRadius.only( 
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                                    
                      ),
                      child: const Text(
                        "Menu",
                        style: TextStyle( 
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                        ),
                    ),
                  ),
                 
                ],
              ),
            ),
      
            Container( 
      
              margin: const EdgeInsets.only(top: 70),
      
              // child: Image.network(
      
              //   "https://qul.imgix.net/c84d6c6a-80f9-412b-ae76-87eef177cf95/513687_sld.jpg"
              // ),
      
              child: Image.asset(
                "lib/assets/images/HASHTAKWALL.jpeg",
      
              ),
            )
        ],
      ),
    ),
  ); 
  }
}