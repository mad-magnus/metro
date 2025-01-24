import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metro/parcel.dart';
import 'package:metro/schedule.dart';
import 'package:metro/ticket.dart';

import 'Station.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {

    return Homepage();
  }

}

class Homepage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "John Doe",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "johndoe@example.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    "https://via.placeholder.com/150", // Replace with the account owner's picture URL
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.payments_rounded,size: 28, color: Colors.blue),
              title: Text("Payment"),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.group,size: 28, color: Colors.blue),
              title: Text("For a Friend"),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.support_agent_sharp,size: 28, color: Colors.blue),
              title: Text("Help and Support"),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.emergency_share_sharp,size: 28, color: Colors.blue),
              title: Text("Emergency"),
              onTap: () {
                // Add your navigation logic here
              },
            ),

            ListTile(
              leading: Icon(Icons.settings,size: 28, color: Colors.blue),
              title: Text("Setting"),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_outlined,size: 28, color: Colors.blue),
              title: Text("About us"),
              onTap: () {
                // Add your navigation logic here
              },
            ),
            Divider(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app, color: Colors.blue),
                  title: Text("Logout"),
                  onTap: () {
                    // Add logout logic here
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
          child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text('Good Evening! \nSmith',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 330,
                    decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xff363636) // Dark mode
                            : Colors.white, // light mode
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                        boxShadow: [BoxShadow(
                            color: Colors.black26,
                            blurRadius: 15
                        )]
                    ),


                    child: GridView.extent(maxCrossAxisExtent: 80,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      padding: EdgeInsets.only(left: 25,right: 25,top: 45),

                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: (){},
                            child: FaIcon(
                                FontAwesomeIcons.train,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ticket();
                              },));
                            },
                            child: FaIcon(
                                FontAwesomeIcons.ticket,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Schedule();
                                  },));
                            },
                            child: FaIcon(
                                FontAwesomeIcons.calendar,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Parcel();
                              },));
                            },
                            child: FaIcon(
                                FontAwesomeIcons.boxOpen,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Station();
                              },));
                            },
                            child: FaIcon(
                                FontAwesomeIcons.playstation,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                        CircleAvatar(
                          // radius: 40,
                          backgroundColor: Theme.of(context).brightness == Brightness.dark
                              ? Colors.black // Dark mode
                              : Colors.blue.shade50, // light mode,
                          child: InkWell(
                            onTap: (){},
                            child: FaIcon(
                                FontAwesomeIcons.bell,
                                size: 32,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),

                )
              ]
          )
      ),
    );
  }

}