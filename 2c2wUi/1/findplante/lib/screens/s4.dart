




import 'dart:ui';

import 'package:findplante/screens/s5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Screen4 extends StatefulWidget{ 
  const Screen4({super.key});

  @override 
  State createState()=> _Screen4State();

}

class _Screen4State extends State{ 


  

  @override 
  Widget build(BuildContext context){ 
    return Scaffold( 
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),

    body: Container( 
      
      width: double.infinity,

      child:Column( 

        children: [ 

          Container( 
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: Column( 

              children: [ 
                //remeing top half circle


                Container(
                  margin: EdgeInsets.only(top: 95),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                  
                      // Column( 
                  
                      //   children: [ 
                  
                      //     Te
                      //   ],
                      // ),
                  
                      Container( 
                        
                        width: 176,
                        height: 64,
                        child: Text( 

                          "Find your favorite plants",
                          style: GoogleFonts.poppins( 
                            fontSize:24,
                            fontWeight:FontWeight.w500
                          ),
                        ),
                      ),


//shoping bag
                      Container( 
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration( 

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow( 
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0,4),
                              blurRadius: 16.1
                            )
                          ]
                        ),
                        // color: Colors.red,
                        child:SvgPicture.asset(
                          "lib/assets/svg/shopping-bag.svg",
                          
                          
                        )
                      )
                  
                    ],
                  ),
                ),
                
              ],
            ),
          ),

          Container( 
                  width: double.infinity,
                  height: 30,

                  decoration: BoxDecoration( 
                    gradient: LinearGradient( 
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(251, 247, 248, 1),
                        Color.fromRGBO(251, 247, 248, 0),
                        
                      ]
                    )
                  ),
                ),

//########
               Expanded(
                 child: SingleChildScrollView(
                 
                   child: Column(
                     children: [
                 
                       Container(
                       
                        height: 108,     
                                        
                        child: Expanded(
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                [ 
                                  
                                  Expanded(
                       
                                    child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                                        
                                    itemBuilder: (context, index) {
                                      return Container( 
                        margin: EdgeInsets.only(left: 14),
                       
                                        height: 108,
                                        width: 310,
                                        padding: EdgeInsets.only(left: 15,right: 15),
                       
                                        decoration: BoxDecoration( 
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color.fromRGBO(204, 231, 185, 1),
                                        ),
                                                      
                                        child: Row( 
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [ 
                                            
                                            Column( 
                                                mainAxisAlignment: MainAxisAlignment.center, 
                                                crossAxisAlignment: CrossAxisAlignment.start, 
                                                children: [
                                                        
                                                  Text(
                                                        
                                                    "30% OFF",
                                                    style: GoogleFonts.poppins( 
                                                      fontSize:24,
                                                      fontWeight:FontWeight.w600,
                                                      
                                                    ),
                                                  ),
                                              
                                                  Text(
                                                        
                                                    "02-23 April",
                                                    style: GoogleFonts.poppins( 
                                                      fontSize:14,
                                                      fontWeight:FontWeight.w400,
                                                      
                                                    ),
                                                  ),
                                              
                                                ],
                                              ),
                                          
                       
                                            Container(
                                                width: 120,
                                                height: 108,
                       
                                              child: Image.asset( 
                                                "lib/assets/img/i3.png",
                                                fit:BoxFit.cover                                      
                                              ),
                                            )
                                                      
                                          ],
                                        ),
                                                        
                                      );
                                    },
                                    ),
                                  ),
                                ]
                              ),
                            ),
                       ),
                 Container( 
                 
                  margin: EdgeInsets.only( top: 10),
                  width: double.infinity,
                  alignment: Alignment.center,
                 
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container( 
                          margin: EdgeInsets.only(left: 5),
                 
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration( 
                 
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(62, 102, 24, 1)
                        ),
                 
                 
                      ),
                          Container( 
                          margin: EdgeInsets.only(left: 5),
                 
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration( 
                 
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(197, 214, 181, 1)
                        ),
                 
                        
                      ),
                          Container( 
                          margin: EdgeInsets.only(left: 5),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration( 
                 
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(197, 214, 181, 1)
                        ),
                 
                        
                      ),
                    ],
                  ),
                               ),
                 
                              Container( 
                               margin: EdgeInsets.only(left: 14),
                               alignment: Alignment.centerLeft,
                               width: double.infinity,
                               child: Text(
                  "Indoor",
                  style: GoogleFonts.poppins( 
                    fontSize:20,
                    fontWeight:FontWeight.w500
                  ),
                               ),
                              ),
                 
                 Container(
                 
                 
                  height: 188,
                 
                 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){ 
                     
                    return GestureDetector(
                 
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Screen5();
                        }));
                      },
                      child: Container( 
                      
                      
                      
                        margin: EdgeInsets.only(left: 14,
                          top: 10,
                          
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                        height: 188,
                        width: 141,
                      
                        decoration: BoxDecoration( 
                      
                          color: Colors.white,
                      
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                      
                          Container(
                            decoration: BoxDecoration( 
                              
                            ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Image.asset(
                            
                              "lib/assets/img/i4.png"
                            ),
                          ),
                      
                          Text(
                            "Snake Plants",
                            style:GoogleFonts.dmSans( 
                              fontSize:13,
                              fontWeight:FontWeight.w400,
                              color:Color.fromRGBO(48, 48, 48, 1),
                      
                            )
                          ),
                      
                          Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ 
                              Text(
                                "₹350",
                                style: GoogleFonts.poppins( 
                                  fontSize:16,
                                  fontWeight:FontWeight.w600,
                                  color:Color.fromRGBO(62, 102, 24, 1)
                                ),
                              ),
                      
                              Container( 
                                width: 26,
                                height: 26,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration( 
                      
                                  color: Color.fromRGBO(237, 238, 235, 1),
                                  shape: BoxShape.circle,
                      
                                ),
                      
                                child: SvgPicture.asset(
                                  "lib/assets/svg/shopping-bag.svg",
                      
                      
                                )
                              )
                      
                            ],
                          )
                      
                        ],),
                      
                      
                      ),
                    );
                 
                 
                  }),
                 ),
                 
                 
                 ///
                 Container( 
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20,left: 14),
                  child: Text( 
                 
                    "Outdoor",
                    style: GoogleFonts.poppins( 
                      fontSize:20,
                      fontWeight:FontWeight.w500
                    ),
                  ),
                 ),
                 Container(
                 
                 
                  height: 188,
                 
                 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){ 
                     
                    return GestureDetector(
                 
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                 
                        // }));
                      },
                      child: Container( 
                      
                      
                      
                        margin: EdgeInsets.only(left: 14,
                          top: 10,
                          
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                        height: 188,
                        width: 141,
                      
                        decoration: BoxDecoration( 
                      
                          color: Colors.white,
                      
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                      
                          Container(
                            decoration: BoxDecoration( 
                              
                            ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Image.asset(
                            
                              "lib/assets/img/i4.png"
                            ),
                          ),
                      
                          Text(
                            "Snake Plants",
                            style:GoogleFonts.dmSans( 
                              fontSize:13,
                              fontWeight:FontWeight.w400,
                              color:Color.fromRGBO(48, 48, 48, 1),
                      
                            )
                          ),
                      
                          Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ 
                              Text(
                                "₹350",
                                style: GoogleFonts.poppins( 
                                  fontSize:16,
                                  fontWeight:FontWeight.w600,
                                  color:Color.fromRGBO(62, 102, 24, 1)
                                ),
                              ),
                      
                              Container( 
                                width: 26,
                                height: 26,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration( 
                      
                                  color: Color.fromRGBO(237, 238, 235, 1),
                                  shape: BoxShape.circle,
                      
                                ),
                      
                                child: SvgPicture.asset(
                                  "lib/assets/svg/shopping-bag.svg",
                      
                      
                                )
                              )
                      
                            ],
                          )
                      
                        ],),
                      
                      
                      ),
                    );
                 
                 
                  }),
                 ),
                   Container( 
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20,left: 14),
                  child: Text( 
                 
                    "Outdoor",
                    style: GoogleFonts.poppins( 
                      fontSize:20,
                      fontWeight:FontWeight.w500
                    ),
                  ),
                 ),
                 Container(
                 
                 
                  height: 188,
                 
                 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){ 
                     
                    return GestureDetector(
                 
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context){
                 
                        // }));
                      },
                      child: Container( 
                      
                      
                      
                        margin: EdgeInsets.only(left: 14,
                          top: 10,
                          
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                        height: 188,
                        width: 141,
                      
                        decoration: BoxDecoration( 
                      
                          color: Colors.white,
                      
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                      
                          Container(
                            decoration: BoxDecoration( 
                              
                            ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Image.asset(
                            
                              "lib/assets/img/i4.png"
                            ),
                          ),
                      
                          Text(
                            "Snake Plants",
                            style:GoogleFonts.dmSans( 
                              fontSize:13,
                              fontWeight:FontWeight.w400,
                              color:Color.fromRGBO(48, 48, 48, 1),
                      
                            )
                          ),
                      
                          Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ 
                              Text(
                                "₹350",
                                style: GoogleFonts.poppins( 
                                  fontSize:16,
                                  fontWeight:FontWeight.w600,
                                  color:Color.fromRGBO(62, 102, 24, 1)
                                ),
                              ),
                      
                              Container( 
                                width: 26,
                                height: 26,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration( 
                      
                                  color: Color.fromRGBO(237, 238, 235, 1),
                                  shape: BoxShape.circle,
                      
                                ),
                      
                                child: SvgPicture.asset(
                                  "lib/assets/svg/shopping-bag.svg",
                      
                      
                                )
                              )
                      
                            ],
                          )
                      
                        ],),
                      
                      
                      ),
                    );
                 
                 
                  }),
                 ),
                 
                     ],
                   ),
                 ),
               ),

              
        ]
                  ),
                )

        
    

      
    );
  }
}