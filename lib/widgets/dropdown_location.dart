import 'package:flutter/material.dart';

class Location extends StatelessWidget {

  // Initial Selected Value
  String dropdownlocation = 'Bangladesh';

  // List of items in our dropdown menu
  var items = [
    'Bangladesh',
    'India',
    'Pakistan',
    'Saudi Arabia',
    'Qatar',
  ];
  Location({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButton(
              value: dropdownlocation,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items)
              {
                return DropdownMenuItem(
                value: items,
                child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue){
                setState((){
                 dropdownlocation = newValue!; 
                });
              },
            ),
          ],
        ),
    );
  }

