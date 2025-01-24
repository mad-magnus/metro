import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Station extends StatefulWidget {
  const Station({super.key});

  @override
  State<StatefulWidget> createState() {
    return StationPage();
  }
}

class StationPage extends State<Station> {
  // Station data grouped alphabetically
  final Map<String, List<String>> station = {
    'A': [
      'Abanpola',
      'Agbopura',
      'Ahungalle',
      'Akurala',
      'Alawwa',
      'Alawathupitiya',
      'Aluthgama',
      'Ambalangoda',
      'Ambepussa',
      'Aluthgama',
    ],
    'B': [
      'Badulla',
      'Balapitiya',
      'Babarenda',
      'Bambalapitiya',
      'Bandarawela',
      'Bangadeniya',
      'Batticaloa',
      'Batwatta',
    ],
    'C': [
      'Chavakachcheri',
      'Colombo Fort',
    ],
  };

  Map<String, List<String>> filteredMap = {};
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the filteredMap with all stations
    filteredMap = Map.from(station);
  }

  void filterSearchResults(String query) {
    Map<String, List<String>> tempMap = {};

    if (query.isEmpty) {
      tempMap = Map.from(station); // Reset to the original data
    } else {
      station.forEach((key, value) {
        // Filter each group's values based on query
        List<String> filteredList = value
            .where((element) =>
            element.toLowerCase().contains(query.toLowerCase()))
            .toList();
        if (filteredList.isNotEmpty) {
          tempMap[key] = filteredList; // Only add non-empty groups
        }
      });
    }

    setState(() {
      filteredMap = tempMap; // Update the filtered map
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Station', style: TextStyle(color: Colors.blue),),

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18),
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                controller: searchController,
                onChanged: (value) {
                  filterSearchResults(value); // Call filtering function
                },
                decoration: InputDecoration(

                  hintText: 'Search...',

                  suffixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: filteredMap.keys.map((key) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Group Header
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 8.0),
                          child: Text(
                            key, // Group letter (A, B, C)
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // List of Stations under each group
                        ...filteredMap[key]!.map((item) => ListTile(
                          title: Text(item),
                        )),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}