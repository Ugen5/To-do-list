import 'package:flutter/material.dart';
import 'package:to_do_list/AddScreen.dart';
import 'package:to_do_list/EditScreen.dart';
import 'package:to_do_list/HomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        AddScreen.route_name: (context)=> AddScreen(),
        HomeScreen.route_name: (context)=> HomeScreen(),
        EditScreen.route_name: (context)=> EditScreen(),
      },
    );
  }
}

