

import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar(  
          title: const Text('Dropdown Button App'),
        ), 
        body: const Center(  
          child: DropdownApp(), 
        ),
         ),
      );
 } 
  } 
  class DropdownApp extends StatefulWidget {  
    const DropdownApp({super.key});  

    @override
    // ignore: library_private_types_in_public_api
    _DropdownAppState createState() => _DropdownAppState();
  
  }

  class _DropdownAppState extends State<DropdownApp> {  
    String? selectedDay = 'Monday';

    @override
   Widget build(BuildContext context) { 
    return DropdownButton<String>( 
      value: selectedDay, 
      onChanged: (String? newValue) { 
      setState(() { 
        selectedDay = newValue!; 
         });
      }, 
      items: <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'] 
      .map<DropdownMenuItem<String>>((String value) {  
        return DropdownMenuItem<String>( 
          value: value, 
          child:Text(value), 
        );
      }).toList(),
      ); 
       } 
      }

  