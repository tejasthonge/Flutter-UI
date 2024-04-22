
import 'package:cafehashtag/main.dart';
import 'package:cafehashtag/screens/screen2.dart';
import 'package:cafehashtag/screens/screen4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget{

  const Screen3({super.key});
  
  @override
  State createState() => _LoginState();

  



 }




bool checkValidUsers(SinghUp obj){ 

  for(int i = 0 ;i <usersList.length;i++){
    if(usersList[i] == obj){
      return true;
      
    }

  }
  return false;
}



 class _LoginState extends State{ 
  TextEditingController emailTEC =TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context ){ 
    return  Scaffold(
            backgroundColor: const Color(0xFF100A29),
            body: SingleChildScrollView(
              child: Column(
                children: [
                 const SizedBox(
                    height: 50,
                  ),
                 const  Text(
                    "login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 0, top: 20, bottom: 10, right: 300),
                    child: SizedBox(
                      height: 30,
                      child:Text(
                        "email",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(

                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                             
                              hintText: "Enter email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                                
                              ),
                              
                              prefixIcon: const Icon(Icons.email),
                            )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 0, top: 20, bottom: 10, right: 250),
                    child: SizedBox(
                      height: 30,
                      child: Text(
                        "password",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          obscureText: true,
                            obscuringCharacter: "*",
                            
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              
                            
                              hintText: "Enter password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50),
                                
                              ),
                             
                              prefixIcon:const Icon(Icons.lock),
                            ),
                            
                            ),
                      ),
                    ),
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(50.0),
                    //   shape: BoxShape.circle,
                    //   // color: Colors.red,
                    // ),
                    child: ElevatedButton(
                      onPressed: () {
                       
                       if(checkValidUsers(SinghUp(email: emailTEC.text.trim(), password: passwordTEC.text.trim()
                       )) ){
                         Navigator.push(context,
                         MaterialPageRoute(builder: (context) => const Screen4())
                         );
                       }
                       else{
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context) => const Screen4())
                         );
                       }
                    //    else{
                    //             showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       title: Text("Invalid Login"),
                    //       content: Text("Please check your email and password."),
                    //       actions: [
                    //         TextButton(
                    //           onPressed: () {
                    //             Navigator.of(context).pop();
                    //           },
                    //           child: Text("OK"),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
                    //    }

                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(color: Colors.red)))),
                      child: const Text(
                        "login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150),
                  Container(
                    padding: const EdgeInsets.all(50),
                    child: Image.asset(
                        "lib/assets/images/newLog.png"),
                  ),
                ],
              ),
            ),
          );
  }
 }