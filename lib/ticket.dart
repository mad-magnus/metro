import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ticket extends StatefulWidget {
  const ticket({super.key});

  @override
  State<StatefulWidget> createState() {
    return ticketpage();
  }

}

class ticketpage extends State<ticket> {
  @override

  var startposition = TextEditingController();
  var endposition = TextEditingController();
  var Date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ticket'),
        ),

        body: SafeArea(
          child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(

                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('From:' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                                    SizedBox(height: 11,),
                                    TextField(
                                      controller: startposition,
                                      decoration: InputDecoration(
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('To:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                                    SizedBox(height: 11,),
                                    TextField(

                                      controller: endposition,
                                      decoration: InputDecoration(


                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15,),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date:' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                              SizedBox(height: 11,),
                              TextField(
                                controller: Date,
                                decoration: InputDecoration(
                                    hintText: 'DD/MM/YY',
                                    hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),

                                    prefixIcon:  IconButton(
                                      onPressed: () async {
                                        DateTime? datePicked = await showDatePicker(context: context,
                                            firstDate: DateTime(2021),
                                            lastDate: DateTime(2030));

                                        setState(() {
                                          print('Date selected: ${datePicked!.day}-${datePicked.month}-${datePicked.year}');
                                          Date.text = DateFormat('yyyy-MM-dd').format(datePicked);
                                        });
                                      },
                                      icon: Icon(Icons.calendar_today_outlined,
                                        size: 25,),
                                    )
                                ),
                                onTap: () async {
                                  DateTime? datePicked = await showDatePicker(context: context,
                                      firstDate: DateTime(2021),
                                      lastDate: DateTime(2030));

                                  setState(() {
                                    print('Date selected: ${datePicked!.day}-${datePicked.month}-${datePicked.year}');
                                    Date.text = DateFormat('yyyy-MM-dd').format(datePicked);
                                  });

                                },
                                readOnly: true,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     width: double.infinity,
                //     height: 330,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                //       boxShadow: [BoxShadow(
                //         color: Colors.black26,
                //         blurRadius: 15,
                //       )]
                //     ),
                //   ),
                // )
              ]
          ),
        )
    );

  }

}