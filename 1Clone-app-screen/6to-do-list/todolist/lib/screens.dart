import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State createState() => _Screen1State();
}

class _Screen1State extends State {
  List toDoList = [
   {
    "date":"19 feb 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(134, 250, 234, 89),
    "img":""
   }, 
   {
    "date":"12 jan 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 89, 250, 231),
    "img":""
   }, 
   {
    "date":"13 feb 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 245, 89, 250),
    "img":""
   }, 
   {
    "date":"19 feb 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 250, 89, 89),
    "img":""
   }, 
   {
    "date":"12 jan 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 89, 250, 231),
    "img":""
   },
   {
    "date":"20 apr 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 250, 250, 89),
    "img":""
   }, 
   {
    "date":"29 apr 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 172, 89, 250),
    "img":""
   }, 
   {
    "date":"12 jan 2024",
    "title":"This is first List we can modifiy it some time ",
    "discreption":"this is an discreption of to jay shree ram ,jay hanuman,jay hindurastra",
    "color":Color.fromARGB(133, 89, 250, 231),
    "img":""
   },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      
      AppBar(
      
        
       
        title: 
        Container
        (
          alignment: Alignment.centerLeft,
          height: 60,
         width: double.infinity,
        color: Color.fromRGBO(2, 167, 177, 1),
     
    
          child:
        Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            // backgroundColor: 
          ),
        ),
        ),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 112,
            width: 330,
            margin: EdgeInsets.only(top: 20, right: 10, left: 10),
            decoration: BoxDecoration(
                color: toDoList[index]["color"],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 0),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
//                       child: Image.asset(
//                         "",
//                         
// 
//                       ),
                    ),
                    Text(
                      toDoList[index]["date"],
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // height: 40,
                      width: 270,
                      child: Text(
                        toDoList[index]["title"],
                        style: GoogleFonts.quicksand(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    
                    ),
                    Container(
                      // height: 40,
                      width: 270,
                      child: Text(
                        toDoList[index]["discreption"],
                        style: GoogleFonts.quicksand(
                          
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(84, 84, 84, 1))

                        ),
                      ),
                    
                  ],
                ),
               
              ],
            ),
          );
        },
      ),
    );
  }
}
