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

    var MyItems=[
      {"img":"https://rabbil.com/files/mernX.png","title":"Rabbil"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Shakir"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Ahmad"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Sabbir"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Nasir"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Rihad"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Abdullah"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Muhammadullah"},
      {"img":"https://rabbil.com/files/mernX.png","title":"Mizan"},
    ];

    MySanckBar(context, msg){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Inventory App"),
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            childAspectRatio: 1.2
        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){MySanckBar(context, MyItems[index]['title']);},
            child: Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}