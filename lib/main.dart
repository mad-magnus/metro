import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SplashScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 830),
        builder: (_ , child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            theme: ThemeData(
              brightness: Brightness.light,
              scaffoldBackgroundColor: Colors.white,

              appBarTheme: AppBarTheme(
                  color: Colors.white
              ),


              textTheme:  TextTheme(
                bodyLarge: TextStyle(color: Colors.black),
              ),


              inputDecorationTheme: InputDecorationTheme(
                filled:true,
                fillColor: Colors.grey[200],
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular( 11),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.black),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),

              useMaterial3: true,
            ),




            darkTheme: ThemeData(
              appBarTheme: AppBarTheme(
                  color: Colors.black
              ),


              brightness: Brightness.dark,
              scaffoldBackgroundColor: Colors.black,
              textTheme: TextTheme(
                bodyLarge: TextStyle(
                    color: Colors.white),
              ),

              inputDecorationTheme: InputDecorationTheme(
                filled:true,
                fillColor: Color(0xff363636),
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular( 11),
                  borderSide: BorderSide(
                      color: Colors.black
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.white),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),








            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
            themeMode: ThemeMode.system,
            home: SplashScreen(),
          );
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
    );
  }
}
