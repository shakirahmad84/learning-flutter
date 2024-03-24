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

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Inventory App"),
        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        titleSpacing: 15,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        toolbarTextStyle: TextStyle(color: Colors.white),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){MySnackBar("Comments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("Settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email)),
        ],
      ),
    );
  }
}