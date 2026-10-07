import 'package:flutter/material.dart';
import 'package:foodapp/presentaion/landing/walkthrough_one_screen.dart';
import 'package:foodapp/presentaion/landing/walkthrough_three_screen.dart';
import 'package:foodapp/presentaion/landing/walkthrough_two_screen.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                children: [
                  WalkthroughOneScreen(),
                  WalkthroughTwoScreen(),
                  WalkthroughThreeScreen(),
                ],
                onPageChanged: (int index) {
                  // Handle page change if needed
                  setState(() {
                    //để UI load kịp thời
                    _currentPageIndex = index;
                  });
                  print('Current page index: $index');
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_currentPageIndex == 0) ...[
                  Icon(Icons.circle, color: Colors.green, size: 25),
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),                ] 
                else if (_currentPageIndex == 1) ...[                  
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),
                  Icon(Icons.circle, color: Colors.green, size: 25),
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),
                ] else if (_currentPageIndex == 2) ...[
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),
                  Icon(Icons.circle_outlined, color: Colors.green, size: 25),
                  Icon(Icons.circle, color: Colors.green, size: 25),
                ],
              ],
            ),
            Container(
              width: 335,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'GET STARTED',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
