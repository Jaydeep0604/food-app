

import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/homescreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  var isAllSame;
  bool byEmail = true;
  bool validate = false;
  bool _obsecureText = true;

  bool login = true;
  final emaill = TextEditingController();
  final passwordd = TextEditingController();
  final confirmpasswordd = TextEditingController();
  final mobile = TextEditingController();
  final checkbox = TextEditingController();

  late TextEditingController mobileCtr;
  late TextEditingController emailCtr;
  late TextEditingController password;
  late TextEditingController passwordMobile;
@override
  void dispose() {
    emaill.dispose();
    passwordd.dispose();
    confirmpasswordd.dispose();
    checkbox.dispose();
    super.dispose();
  }

  void initState() {
    mobileCtr = TextEditingController();
    emailCtr = TextEditingController();
    password = TextEditingController();
    passwordMobile = TextEditingController();

    super.initState();
  }

  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset("assets/Group 118.png"),
                        ),
                        Padding(padding: EdgeInsets.only(top: 59,left: 150),
                        child: Container(
                           child:  Text("Login",style:  TextStyle(fontSize: 20),),),
                        
                        ),
                        
                        Padding(padding: EdgeInsets.only(top: 92,left: 120),
                        child:  Container(
                          child: Text("Access Account",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 189,left: 118),
                        child: Image.asset("assets/Group 6.png",height: 55,width: 125,),
                        ),
                        Padding(padding: EdgeInsets.only(top: 252,left: 115),
                        child:  Container(
                          child: Text("or Login with Email",style:  TextStyle(fontSize: 15,color: Palette.textColor),
                          ),
                        ),
                        ),
                        
                    ],
                  ),
                  Expanded(
                  child:Form(
                     key: _formKey,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,decoration: BoxDecoration(color:Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Text('Email',style: TextStyle(fontSize: 16,color: Palette.textColor,fontWeight: FontWeight.bold),),
                        )),
                            Container(
                              margin: EdgeInsets.only(top: 15, right: 30, left: 30),
                                    
                                  padding:
                                      EdgeInsets.only(top: 0, right: 0, left: 0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: new InputDecoration(
                                           
                                          contentPadding: const EdgeInsets.all(10),
                                          filled: true,
                                          fillColor: Palette.whiteColor,
                                          hintText: 'sample@email.com',hintStyle: TextStyle(fontSize: 16),
                                         border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50)
                                           ),
                                           disabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusedErrorBorder:  OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      errorStyle: TextStyle(color: Palette.primaryColor),
                                        ),
                                        //controller: emailCtr,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(320),
                                          FilteringTextInputFormatter.deny(" "),
                                          FilteringTextInputFormatter.deny("[]"),
                                          FilteringTextInputFormatter.deny("["),
                                          FilteringTextInputFormatter.deny("]"),
                                          FilteringTextInputFormatter.deny("^"),
                                          FilteringTextInputFormatter.deny(""),
                                          FilteringTextInputFormatter.deny("`"),
                                          FilteringTextInputFormatter.deny("/"),
                                          FilteringTextInputFormatter.deny("\\"),
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'[0-9a-zA-z._@]')),
                                          FilteringTextInputFormatter.deny(
                                              RegExp(r"/"))
                                        ],
                                       validator: (value) {
                                    if (value?.trim().isEmpty ?? true) {
                                      return "Please Enter Email Address";
                                    } else if (!RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value ?? "")) {
                                      return "Enter Valid Email Address";
                                    }
                                    return null;
                                    },
                                      )
                                    ],
                                  ),
                                ),
                                 SizedBox(height: 15,),
                               Container(alignment: Alignment.centerLeft,decoration: BoxDecoration(color:Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Text('Password',style: TextStyle(fontSize: 16,color: Palette.textColor,fontWeight: FontWeight.bold),),
                                )
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 15,left: 35,right: 35),
                                   
                                    child: TextFormField(
                                      
                                    obscureText: _obsecureText,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6)
                                    ],
                                    decoration: InputDecoration(
                                      
                                      contentPadding: const EdgeInsets.all(10),
                                      filled: true,
                                      fillColor: Palette.whiteColor,
                                      border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50)
                                           ),
                                           disabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      focusedErrorBorder:  OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.circular(50),
                                      ),   
                                      errorStyle: TextStyle(color: Palette.primaryColor),
                                      errorText: validate
                                          ? 'Please Enter Your Password'
                                          : null,
                                      hintText: 'Password',
                                      suffixIcon: GestureDetector(
                                        onTap: _toggleObscured,
                                        child: Transform.scale(
                                          scale: 0.5,
                                          child: ImageIcon(
                                            _obsecureText
                                                ? AssetImage(
                                                    "assets/ic_eye_close.png",
                                                  )
                                                : AssetImage(
                                                    "assets/ic_eye.png",
                                                  ),
                                            size: 15,
                                            color: Palette.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (val) {
                                      if (val!.isEmpty)
                                        return "Enter Your Password";
                                      return null;
                                    }),
                                  ),
                                ],
                              ),
                                GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: SizedBox(
                                width: 320,
                                height: 60,
                                child: MaterialButton(
                                  color: Palette.primaryColor,
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  onPressed: () {
                                    setState(() {
                                      if (_formKey.currentState!.validate()) {
                                       Fluttertoast.showToast(
                                              msg: "Record Submited",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor:
                                                Palette.primaryColor,
                                            textColor: Palette.textColor,
                                              fontSize: 16.0);
                                               Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen()),
                                            );
                                           } 
                                           else {
                                        // Fluttertoast.showToast(
                                        //     msg: "Record Not Submited",
                                        //     toastLength: Toast.LENGTH_SHORT,
                                        //     gravity: ToastGravity.BOTTOM,
                                        //     timeInSecForIosWeb: 1,
                                        //     backgroundColor:
                                        //         Palette.primaryColor,
                                        //     textColor: Palette.textColor,
                                        //     fontSize: 16.0);
                                      }
                                    });
                                  },
                                  child: Text('Sign In',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  
                                ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const LoginScreen()),
                                  // );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    right: 70,
                                  ),
                                  child: Text("Don’t have an account?",style: TextStyle(fontSize: 15),),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const LoginScreen()),
                                  // );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    left: 170,
                                  ),
                                  child: SelectableText("Register",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ],
                          )
                          ],
                        ),
                      ),
                    )
                  )
                )
                ],
              )
            ),
            
          ],
        )
      ),
    );
  }
}