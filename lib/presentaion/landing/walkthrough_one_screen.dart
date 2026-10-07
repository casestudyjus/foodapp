import 'package:flutter/material.dart';

import '../components/landing/welcome_widget.dart';

class WalkthroughOneScreen extends StatefulWidget {
  const WalkthroughOneScreen({super.key});

  @override
  State<WalkthroughOneScreen> createState() => _WalkthroughOneScreenState();
}

class _WalkthroughOneScreenState extends State<WalkthroughOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
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
            WelcomeWidget(imagePath: 'images/walkthrough1.png', title: 'All your favorites',description: 'Order from the best local restaurants with easy, on-demand delivery.',),
            
          ],
        ),
      );
  }
}