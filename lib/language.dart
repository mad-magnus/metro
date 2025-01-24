import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<StatefulWidget> createState() {
    return LanguagePage();
  }

}

class LanguagePage extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),

      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(
              height: 100,
            ),

            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),

                    borderRadius: BorderRadius.circular(11)


                ),
                child: Center(child: Image.asset('assets/images/Patna_Metro.png',width: double.infinity,height: double.infinity,)),
              ),
            ),

            Spacer(),

            Text("Please select Your language", style: Theme.of(context).textTheme.bodyLarge),

            SizedBox(height: 30),

            SizedBox(
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                },));
              },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child:Text('English',
                  style: TextStyle(color: Colors.white, fontSize: 18),),

              ),
            ),

            SizedBox(height: 11,),

            SizedBox(
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                },));
              },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: Text('Hindi',
                  style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),

            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }

}