import 'package:flutter/material.dart';

import '../components/landing/welcome_widget.dart';

class WalkthroughTwoScreen extends StatefulWidget {
  const WalkthroughTwoScreen({super.key});

  @override
  State<WalkthroughTwoScreen> createState() => _WalkthroughTwoScreenState();
}

class _WalkthroughTwoScreenState extends State<WalkthroughTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/g12.png',width: 65,height: 65,),
                  SizedBox(width: 16,),
                  Column(
                    children: [
                      Text('Tamang', 
                      style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold),
                      maxLines: 2,
                      ),
                      Text('FoodService', 
                      style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold),
                      maxLines: 2,
                      ),
                    ],
                  )
                ],
              ),
              // Image.asset('images/Illustration.png',width: 300,height: 300,),
              // Container(
              //   margin: EdgeInsets.only(top: 4, bottom: 4),
              //   child: Text('Welcome', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
              // SizedBox(height: 16,),
              // Container(
              //   width: 300,
              //   margin: EdgeInsets.only(top: 4, bottom: 4),
              //   child: Text('It’s a pleasure to meet you. We are excited that you’re here so let’s get started!', style: TextStyle(fontSize: 16))),
              WelcomeWidget(imagePath: 'images/walkthrough2.png', title: 'Free delivery offers',description: 'Free delivery for new customers via Apple Pay and others payment methods.',),
              SizedBox(height: 50,),
              Container(
                width: 335,
                height: 48,
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text('GET STARTED', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}