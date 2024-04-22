import 'package:cafehashtag/main.dart';

import 'package:cafehashtag/screens/screen3.dart';

import 'package:flutter/material.dart';




class Screen2 extends StatefulWidget {   

  const Screen2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUp();
    
  }
}

class SinghUp{

  final String email;
  final String password;

  SinghUp( {
    required this.email,
    required this.password,

  });
}


void addNewUser(SinghUp obj){



  usersList.add(obj);

}
bool checkValidPassword( String password ,String cPassword){

  if( password == cPassword){

    return true;
  }
  else{
    
    return false;
  }

}


class _SignUp extends State {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _cpassword = TextEditingController();

  bool isSingup = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color(0xFF100A29),
            body: SingleChildScrollView(
              child: Column(
                children: [
                 const  SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Sign up",
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
                            controller: _email,
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
                            controller: _password,
                            style:const  TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              // labelText: "Password",
                              hintText: "Enter password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50),
                  
                              ),
                         
                              // )
                              prefixIcon:const  Icon(Icons.lock),
                            )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(
                        left: 0, top: 20, bottom: 10, right: 150),
                    child: SizedBox(
                      height: 30,
                      child: Text(
                        "conform password",
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
                            controller: _cpassword,
                            style:const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                            
                              hintText: "Enter conform password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                                
                              
                              ),
                         
                              prefixIcon: const Icon(Icons.email),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {

                          if( checkValidPassword(_password.text.trim(), _cpassword.text.trim())){

                            addNewUser(
                              SinghUp(email: _email.text.trim(), password:_password.text.trim())
                            );
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>const Screen3())
                             );
                          }
                             else{
                                showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Password not Match"),
                          content: const Text("Please check Password"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child:const  Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                       }

                        });
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
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context,
                     
                     MaterialPageRoute(builder:(context)=>const Screen3() )
                     
                     );

                  }, 
                  
                  child: const Text("already account ?",
                    style: TextStyle( 
                      color: Colors.blue,
                    ),
                  )),
                 const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(50),
                    // height: 200,
                    // width: 400,
                    child: Image.asset(
                        "lib/assets/images/newLog.png"),
                  ),
                ],
              ),
            ),
          );
        
  }
}