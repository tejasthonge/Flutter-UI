import "dart:ui";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/services.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State createState() => _Screen5State();
}

class _Screen5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),
      body: Expanded(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    )),

                Container(
                  width: double.infinity,
                  child: Image.asset("lib/assets/img/i4.png"),
                ),

                ///
                Container(
                  margin: EdgeInsets.only(top: 10),
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
                            color: Color.fromRGBO(62, 102, 24, 1)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(197, 214, 181, 1)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(197, 214, 181, 1)),
                      ),
                    ],
                  ),
                ),

                Container(

                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Snake Plants",
                        style: GoogleFonts.poppins( 
                      
                          fontSize:22,
                          fontWeight:FontWeight.w600,
                      
                          
                        ),
                      ),

                      Text("Plansts make your life with minimal and happy love the plants more and enjoy life.",
                        style: GoogleFonts.poppins( 
                          fontSize:13,
                          fontWeight:FontWeight.w400,
                          color:Color.fromRGBO(48, 48, 48, 1)
                        ),
                      )
                    ],
                  ),
                ),

                Container( 

                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  decoration: BoxDecoration( 
                    color: Color.fromRGBO(118, 152, 75, 1),
                    borderRadius: BorderRadius.circular(20)

                  ),

                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 

                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [ 

                          Column( 
                            children: [ 
                              SvgPicture.asset(
                                "lib/assets/svg/height.svg"
                              ),
                              const SizedBox(height: 14,),
                              Text( 
                                "Height",
                                style: GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:12,
                                  color:Colors.white
                                ),
                              ),

                              Text( 
                                "30cm-40cm",
                                style:GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:10,
                                  color:Color.fromRGBO(255, 255, 255, 0.6)
                                )
                              )
                            ],
                          ),
                              Column( 
                            children: [ 
                              SvgPicture.asset(
                                "lib/assets/svg/thermometer.svg"
                              ),
                              const SizedBox(height: 14,),
                              Text( 
                                "Temperature",
                                style: GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:12,
                                  color:Colors.white
                                ),
                              ),

                              Text( 
                                "20’C-25’C",
                                style:GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:10,
                                  color:Color.fromRGBO(255, 255, 255, 0.6)
                                )
                              )
                            ],
                          ),

                              Column( 
                            children: [ 
                              SvgPicture.asset(
                                "lib/assets/svg/Vector.svg"
                              ),
                              const SizedBox(height: 14,),
                              Text( 
                                "Pot",
                                style: GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:12,
                                  color:Colors.white
                                ),
                              ),

                              Text( 
                                "Ciramic Pot",
                                style:GoogleFonts.poppins( 
                                  fontWeight:FontWeight.w500,
                                  fontSize:10,
                                  color:Color.fromRGBO(255, 255, 255, 0.6)
                                )
                              )
                            ],
                          ),



                        ],
                      ),


                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [ 

                          Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 

                              Text(
                                "Total Price",
                                style: GoogleFonts.poppins(
                                  fontSize:14,
                                  fontWeight:FontWeight.w500,
                                  color:Color.fromRGBO(255, 255, 255, 0.8)

                                ),
                              ),

                              Text( 
                                "₹ 350",
                                style: GoogleFonts.poppins( 
                                  fontSize:18,
                                  fontWeight:FontWeight.w600,
                                  color:Color.fromRGBO(255, 255, 255, 1)

                                ),
                              )
                            ],
                          ),

                          Container( 
                            alignment: Alignment.center,
                            height: 48,
                            width: 150,

                            decoration: BoxDecoration( 
                              color: Color.fromRGBO(103, 133, 74, 1),
                              borderRadius: BorderRadius.circular(9)
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [ 

                              SvgPicture.asset( 
                                color: Colors.white,
                                "lib/assets/svg/shopping-bag.svg",

                              ),
                              const SizedBox(width: 10,),
                              Text("Add to cart",
                                style: GoogleFonts.rubik( 
                                  fontSize:15,
                                  fontWeight:FontWeight.w500,
                                  color:Colors.white
                                ),
                              )
                            ],),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
