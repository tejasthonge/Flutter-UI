

import 'package:findplante/screens/s4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State createState() => _Screen3State();
}

class _Screen3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                            // margin: EdgeInsets.only(left: ),
                            margin: EdgeInsets.only(
                                // top: 80,
                                left: 150),
                            width: 128,
                            height: 128,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(204, 211, 196, 1),
                                    width: 2))),
                        Container(
                          width: 77,
                          height: 77,
                          margin: EdgeInsets.only(top: 35, left: 105),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color.fromRGBO(204, 211, 196, 1),
                                  width: 2)),
                        ),
                        Container(
                          width: 51,
                          height: 51,
                          margin: EdgeInsets.only(top: 80, left: 80),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color.fromRGBO(204, 211, 196, 1),
                                  width: 2)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Text(
                "Verification",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20, top: 8),

                // color: Colors.red,
                width: 272,
                child: Text(
                  "Enter the OTP code from the phone we just sent you.",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
              ),

//otp boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: ,
                    height: 56,
                    width: 56,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            offset: Offset(0, 8),
                            blurRadius: 20,
                          )
                        ]),

                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Container(
                    // color: ,
                    height: 56,
                    width: 56,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            offset: Offset(0, 8),
                            blurRadius: 20,
                          )
                        ]),

                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Container(
                    // color: ,
                    height: 56,
                    width: 56,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            offset: Offset(0, 8),
                            blurRadius: 20,
                          )
                        ]),

                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Container(
                    // color: ,
                    height: 56,
                    width: 56,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            offset: Offset(0, 8),
                            blurRadius: 20,
                          )
                        ]),

                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  children: [
                    Text("Don’t receive OTP code!",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                    Text(" Resend",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          // color:Color.fromRGBO(0, 0, 0, 0.6),
                        )),
                  ],
                ),
              ),

               GestureDetector(
                onTap: (){ 
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){ 
                    return const Screen4();
                  })
                  );
                },
                child: Container( 
                  // margin: EdgeInsets.only(left: 14,right: 14),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                
                decoration: BoxDecoration( 
                
                  gradient: LinearGradient( 
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                          Color.fromRGBO(124, 180, 70, 1),
                        Color.fromRGBO(62, 102, 24, 1),
                    ] 
                  ),
                  borderRadius: BorderRadius.circular(10),
                
                  boxShadow: [
                
                    BoxShadow( 
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0,20),
                    spreadRadius: 0,
                    blurRadius: 40
                  )
                  ]
                ),
                  
                  child: Text( 
                
                    "Submit",
                    style:GoogleFonts.rubik( 
                
                      fontSize:18,
                      color:Colors.white,
                      fontWeight:FontWeight.w500
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
