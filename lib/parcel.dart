import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Parcel extends StatefulWidget {
  const Parcel({super.key});

  @override



  State<StatefulWidget> createState() {
    return ParcelPage();
  }

}

class ParcelPage extends State<Parcel> {
  @override
  List<String> StartStation = <String>["Patna","Mumbai","Delhi","Pakistan","Odisa","Manipur"];
  var item = TextEditingController();
  var weight = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Parcel', style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body:Padding(
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
                          'From:',
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
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Color(0xf0edebeb),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),






                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:  const Text(
                          'To:',
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
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Color(0xf0edebeb),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
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
                          'item:',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: TextField(
                            controller: item,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                              hintText: "-SELECT-",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Color(0xf0edebeb),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
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
                          'Weight(kg):',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: weight,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xf0edebeb),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),


                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 250),

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
                      child: Text('Calculate', style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

}