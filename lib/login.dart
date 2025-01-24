import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:metro/resetpassword.dart';
import 'package:metro/sinup.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {

    return Loginpage();
  }

}

class Loginpage extends State<Login> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),

      body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 360,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 10)),

                  Center(
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.white,
                      child: Image.asset('assets/images/patna3.png'),
                    ),
                  ),

                  // SizedBox(height: 100,),
                  Expanded(child: SizedBox(height: 10,)),


                  // Acts like a Spacer
                  Form(
                      key: _formKey,
                      child: OverflowBar(
                        children: [
                          TextFormField(
                            controller: emailcontroller,
                            validator: (text){
                              if(text == null || text.isEmpty){
                                return 'Email is Empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Email',
                            ),
                          ),


                          SizedBox(height: 20),

                          TextFormField(
                            controller: passwordcontroller,
                            validator: (text){
                              if(text == null || text.isEmpty){
                                return 'Password is Empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Password',
                            ),
                          ),


                          SizedBox(height: 25),


                          Center(
                            child: InkWell(onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ResetPassword()),
                              );

                            },
                              child: Text('Forgot Password?'),
                            ),
                          ),

                          SizedBox(height: 25,),


                          SizedBox(
                            width: 360,
                            child: ElevatedButton(onPressed: (){
                              if(_formKey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Home();
                                },));
                              }

                            },
                                style:  ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11)
                                    )
                                ),
                                child: Text('Login',
                                  style: TextStyle(color: Colors.white),
                                )
                            ),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Center(
                            child: RichText(text: TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15),

                                children:[
                                  TextSpan(text: "Don't have an account? "),
                                  TextSpan(text: "Sign Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Navigate to the SignUpPage when "Sign Up" is clicked
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Sinup()),
                                        );
                                      },
                                  ),
                                ]
                            ),

                            ),
                          ),
                          SizedBox(height: 30,),],
                      )


                  ),

                ],
              ),
            ),
          )
      ),
    );
  }

}