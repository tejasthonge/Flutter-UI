import 'package:cafehashtag/screens/screen2.dart';

import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget{

  const Screen1({super.key});

  @override 
  State createState()=> _Screen1State();
}


class _Screen1State extends State{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor:const Color(0xFF100A29),
      body: Padding(
        
        padding:const EdgeInsets.only(
          top:100,
          left: 30,
          right: 30,

        ) ,
        child: Container(
          
          
            decoration: const BoxDecoration(


            ),

            child: Column(children: [
              Image.asset(
                "lib/assets/images/newLog.png",
                // height: 200,
              ),

              Image.asset(
                "lib/assets/images/pizz1.png",
                height: 400,
              ),
             

             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen2()));
              },
              child: const Text( 

                "ORDER NOW",
                style: TextStyle( 
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
             )
            ],),
          ),
        )
        
        
        ,
    );
  }
}