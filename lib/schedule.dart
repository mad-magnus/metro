import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<StatefulWidget> createState() {
    return Schedulepage();
  }

}

class Schedulepage extends State<Schedule> {
  @override

  List<String> StartStation = <String>["Patna","Mumbai","Delhi","Pakistan","Odisa","Manipur"];

  var StartTime = TextEditingController();
  var EndTime = TextEditingController();
  var Date1 = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule', style: TextStyle(color: Colors.blue),),
      ),

      body: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:  const Text(
                          'Start station:',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(

                          child: Autocomplete<String>(optionsBuilder: (TextEditingValue textEditingValue){
                            if(textEditingValue.text == ''){
                              return Iterable<String>.empty();
                            }
                            return StartStation.where((String Station) {
                              return Station.toLowerCase().contains(textEditingValue.text);
                            });
                          },
                            // displayStringForOption: (Station){
                            //   return "${StartStation.indexOf(Station) + 1} ${Station}";
                            // },
                            fieldViewBuilder: (context, controller, focusNode, onEditingComplete){
                              return TextField(
                                controller: controller,
                                focusNode: focusNode,
                                onEditingComplete: onEditingComplete,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                                  hintText: "-SELECT-",

                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 22),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:  const Text(
                          'Stat Time:',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: TextField(
                            controller: StartTime,

                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () async {
                                    TimeOfDay? PickedTime = await showTimePicker(context: context,
                                        initialTime: TimeOfDay.now(),
                                        initialEntryMode: TimePickerEntryMode.dial
                                    );
                                    if(PickedTime!=null){
                                      setState(() {
                                        // print('Time Selected: ${PickedTime.hour}: ${PickedTime.minute}');
                                        StartTime.text = PickedTime.format(context);
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down_outlined)
                              ),
                              hintText: "-SELECT-",

                            ),
                            onTap: () async {
                              TimeOfDay? PickedTime = await showTimePicker(context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.dial
                              );
                              if(PickedTime!=null){
                                setState(() {
                                  // print('Time Selected: ${PickedTime.hour}: ${PickedTime.minute}');
                                  StartTime.text = PickedTime.format(context);
                                });
                              }

                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 70,),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:  const Text(
                          'End station:',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(

                          child: Autocomplete<String>(optionsBuilder: (TextEditingValue textEditingValue){
                            if(textEditingValue.text == ''){
                              return Iterable<String>.empty();
                            }
                            return StartStation.where((String Station) {
                              return Station.toLowerCase().contains(textEditingValue.text);
                            });
                          },
                            // displayStringForOption: (Station){
                            //   return "${StartStation.indexOf(Station) + 1} ${Station}";
                            // },
                            fieldViewBuilder: (context, controller, focusNode, onEditingComplete){
                              return TextField(
                                controller: controller,
                                focusNode: focusNode,
                                onEditingComplete: onEditingComplete,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                                  hintText: "-SELECT-",

                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 22),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:  const Text(
                          'End Time:',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: TextField(
                            controller: EndTime,

                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () async {
                                    TimeOfDay? PickedTime = await showTimePicker(context: context,
                                        initialTime: TimeOfDay.now(),
                                        initialEntryMode: TimePickerEntryMode.dial
                                    );
                                    if(PickedTime!=null){
                                      setState(() {
                                        // print('Time Selected: ${PickedTime.hour}: ${PickedTime.minute}');
                                        StartTime.text = PickedTime.format(context);
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down_outlined)
                              ),
                              hintText: "-SELECT-",

                            ),
                            onTap: () async {
                              TimeOfDay? PickedTime = await showTimePicker(context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.dial
                              );
                              if(PickedTime!=null){
                                setState(() {
                                  // print('Time Selected: ${PickedTime.hour}: ${PickedTime.minute}');
                                  StartTime.text = PickedTime.format(context);
                                });
                              }

                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 50),
                Text('Date:' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                SizedBox(height: 11,),
                TextField(
                  controller: Date1,
                  decoration: InputDecoration(
                      hintText: 'DD/MM/YY',

                      prefixIcon:  IconButton(
                        onPressed: () async {
                          DateTime? datePicked = await showDatePicker(context: context,
                              firstDate: DateTime(2021),
                              lastDate: DateTime(2030));

                          setState(() {
                            print('Date selected: ${datePicked!.day}-${datePicked.month}-${datePicked.year}');
                            Date1.text = DateFormat('yyyy-MM-dd').format(datePicked);
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
                      Date1.text = DateFormat('yyyy-MM-dd').format(datePicked);
                    });

                  },

                  readOnly: true,
                ),


                SizedBox(height: 50,),

                Center(
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11)
                          )
                      ),
                      child: Text('Search Train', style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),

                SizedBox(height: 25,)
              ],
            ),
          ),
        ),
      ),

    );
  }

}