import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30)),
          color: Color.fromRGBO(33, 191, 115, 1),
          shadowColor: Color.fromRGBO(176, 234, 205, 1),
          elevation: 80,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Text('This is card'),
            ),
          ),
        ),
      ),
    );
  }
}