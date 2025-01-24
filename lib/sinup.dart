import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sinup extends StatefulWidget {
  const Sinup({super.key});

  @override
  State<StatefulWidget> createState() {
    return SinupPage();
  }

}

class SinupPage extends State<Sinup> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController nicnumber = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),

      ),



      body: Center(
        child: SizedBox(
          width: 365,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Center(
                    child: Icon(
                      Icons.ac_unit, size: 100,
                    )
                ),


                SizedBox(height: 50,),

                Form(
                  key: _formKey,
                  child: OverflowBar(
                      overflowSpacing: 15,

                      children: [
                        TextFormField(
                          controller: namecontroller,
                          validator: (text){
                            if(text == null || text.isEmpty){
                              return 'Name is Empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                          ),
                        ),



                        // SizedBox(height: 15,),

                        TextFormField(
                          controller: phonenumbercontroller,
                          validator: (text){
                            if(text == null || text.isEmpty){
                              return 'Number is Empty';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            hintText: 'Enter your number',

                          ),
                        ),

                        //  SizedBox(height: 15,),

                        TextFormField(
                          controller: nicnumber,
                          validator: (text){
                            if(text == null || text.isEmpty){
                              return 'Name is Empty';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            hintText: 'Enter your nic',

                          ),
                        ),

                        //  SizedBox(height: 15,),

                        TextFormField(
                          controller: emailcontroller,
                          validator: (text){
                            if(text == null || text.isEmpty){
                              return 'Email is Empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter your email',

                          ),
                        ),

                        //  SizedBox(height: 15,),

                        TextFormField(
                          controller: passwordcontroller,
                          validator: (text){
                            if(text == null || text.isEmpty){
                              return 'Password is Empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Password',

                          ),
                        ),




                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (){
                                  if(_formKey.currentState!.validate()){
                                    print('Validation is done');
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                child: Text('Create account', style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),]

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