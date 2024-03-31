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

  MyAlertDialog(context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Text("Alert!"),
              content: Text("Do you want to delete?"),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Delete Success", context);
                  Navigator.of(context).pop();
                }, child: Text("Yes")),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              ],
            )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Inventory App"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){MyAlertDialog(context);},
          child: Text('Elevated Button'),
          style: buttonStyle,
        ),
      ),
    );
  }
}