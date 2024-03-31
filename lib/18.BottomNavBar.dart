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
    );
  }
}