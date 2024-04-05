

import 'package:findplante/screens/s3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget{ 

  const Screen2({super.key});

  @override 
  State createState()=> _Screen2State();

}


class _Screen2State extends State{ 

  @override 
  Widget build(BuildContext context){ 
    return Scaffold( 

      backgroundColor: Color.fromRGBO(251, 247, 248, 1),

      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 40),

        child: SingleChildScrollView( 
        
          child: Column( 
            // mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 

              Container( 

                child: Stack( 

                  children: [ 

                    Container( 
                      // margin: EdgeInsets.only(left: ),
                      width: 128,
                      height: 128,
                      
                      decoration :BoxDecoration( 
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 2
                        )


                      )
                    ),

                    Container( 
                      width:77 ,
                      height: 77,
                      margin: EdgeInsets.only(top: 25,
                        left: 105
                      ),
                      decoration: BoxDecoration( 
                        shape: BoxShape.circle,
                        border: Border.all( 
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width:2
                        )
                      ),
                    ),
                    Container( 
                      width:51 ,
                      height: 51,
                      margin: EdgeInsets.only( 
                        top: 80,
                        left: 150
                      ),
                      decoration: BoxDecoration( 
                        shape: BoxShape.circle,
                        border: Border.all( 
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width:2
                        )
                      ),
                    ),
                  ],
                ),
              ),
        
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 30
                ),
                child: Text(
                  "Log in",
                  style:GoogleFonts.poppins( 
                    fontSize:30,
                    fontWeight:FontWeight.w600,
                    color:Color.fromRGBO(0, 0, 0, 1),
                        
                  )
                ),
              ),

              Container( 
                height: 50,
                margin: EdgeInsets.only(left: 14,right: 14,
                bottom: 30),
                decoration: BoxDecoration( 
                  color: Colors.white,
                  border: Border.all( 
                    
                    color: Color.fromRGBO(204, 211, 196, 1),
                    width: 2,

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
                child: TextField( 


                  
                  decoration: InputDecoration( 
                    
                    hintText: "Mobile Number",
                    hintStyle: GoogleFonts.inter( 
                    color: Color.fromRGBO(164, 164, 164, 1),
                    
                      // fontSize:13,
                      fontWeight:FontWeight.w400,
                    ),
                    // alignLabelWithHint: ,
                    prefixIcon: Icon( 
                      Icons.phone_outlined,
                    color: Color.fromRGBO(164, 164, 164, 1),
                    
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),


//button


              GestureDetector(
                onTap: (){ 
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){ 
                    return const Screen3();
                  })
                  );
                },
                child: Container( 
                  margin: EdgeInsets.only(left: 14,right: 14),
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
                
                    "Log in",
                    style:GoogleFonts.rubik( 
                
                      fontSize:18,
                      color:Colors.white,
                      fontWeight:FontWeight.w500
                    )
                  ),
                ),
              ),


//image

            Container(
              margin: EdgeInsets.only(top: 50),
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset( 
                
                "lib/assets/img/i2.png"
              ),
            )


            ],
          ),
        ),
      ),

    ); 
  }
}