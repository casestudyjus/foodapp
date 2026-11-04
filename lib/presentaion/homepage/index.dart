import 'package:flutter/material.dart';
import 'package:foodapp/presentaion/example.dart';
import 'package:foodapp/presentaion/homepage/homepage.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int value = 0;
  List<Widget> listScreen = [
    HomepageScreen(),
    Text("Search"),
    Text("Orders"),
    Text("Profile"),
    // Text("4")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////
      appBar: AppBar(
        title: Text("Home",),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
        // leading: IconButton(onPressed: (){

        // }, icon: Icon(Icons.menu)),
      ),
      drawer: Drawer(
        child: Column(
          children:[
            DrawerHeader(child: Column(
              children:[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/g12.png"),
                ),
                Container(
                  height: 10,
                ),
                Text("Nguyen Van A"),
              ]
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                //Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (_,){return Example();}));
                
              }, 
              onLongPress:(){
                print("on long press");
              }
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("favorite"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("dartmode"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("setting"),
            )
          ]

        ),
      ),
      body: SafeArea(child: listScreen[value]),
      ////
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          // setState(() {
          //   value = 4;
          // });
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (_,){return Example();}));
            

          });
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home", backgroundColor: Colors.green),
            // BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.green),
            // BottomNavigationBarItem(icon: Icon(Icons.history), label: "Orders", backgroundColor: Colors.green),
            // BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile", backgroundColor: Colors.green),
            GestureDetector(
              onTap: () {
                setState(() {
                  value=0;
                });
              },
              child: Text('Home'),
            ),
            GestureDetector(onTap: () {setState(() {
              value=1;
            });}, child: Text('A')),
            GestureDetector(onTap: () {setState(() {
              value=2;
            });}, child: Text('B')),
            GestureDetector(onTap: () {setState(() {
              value=3;
            });}, child: Text('C')),
          ],
        ),
      ),
      ////
    );
  }
}
