import 'package:flutter/material.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: listScreen[value]),
     
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Orders", backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile", backgroundColor: Colors.green),
           BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile", backgroundColor: Colors.green),
        ],
        currentIndex: 3,
        onTap: (int i){
          
          setState(() {
            value = i;
          });
        },
        
      ),
    );
  }
}