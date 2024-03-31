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
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: (){MySnackBar("Float Button", context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Message"),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("Home", context);
          }
          if(index==1){
            MySnackBar("Contact", context);
          }
          if(index==2){
            MySnackBar("Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Shakir Ahmad", style: TextStyle(color: Colors.white),),
                  accountEmail: Text("shakirahmad84@gmail.com"),
                  currentAccountPicture: Image.network("https://mudimanager.com/img/logo.png"),
                  onDetailsPressed: (){MySnackBar("Profile", context);},
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnackBar("Home", context);}
            ),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: (){MySnackBar("Contact", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){MySnackBar("Profile", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){MySnackBar("Email", context);}
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: (){MySnackBar("Phone", context);}
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Shakir Ahmad", style: TextStyle(color: Colors.white),),
                  accountEmail: Text("shakirahmad84@gmail.com"),
                  currentAccountPicture: Image.network("https://mudimanager.com/img/logo.png"),
                  onDetailsPressed: (){MySnackBar("Profile", context);},
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnackBar("Home", context);}
            ),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: (){MySnackBar("Contact", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){MySnackBar("Profile", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: (){MySnackBar("Email", context);}
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: (){MySnackBar("Phone", context);}
            ),
          ],
        ),
      ),

      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(40, 60, 0, 0),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black, width: 6)
        ),
        child: Image.network("https://mudimanager.com/img/logo.png"),
      ),

    );
  }
}