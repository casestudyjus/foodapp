import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('images/Circle Background.png'),
            Container(
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
                  Image.asset('images/Illustration.png',width: 300,height: 300,),
                  Container(
                    margin: EdgeInsets.only(top: 4, bottom: 4),
                    child: Text('Welcome', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
                  SizedBox(height: 16,),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 4, bottom: 4),
                    child: Text('It’s a pleasure to meet you. We are excited that you’re here so let’s get started!', style: TextStyle(fontSize: 16))),
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
          ],
        ),
      )),
    );
  }
}