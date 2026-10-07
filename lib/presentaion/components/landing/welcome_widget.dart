import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  WelcomeWidget({super.key,required this.imagePath, required this.title, required this.description});
  
  String imagePath;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('${imagePath}',width: 300,height: 300,),
        Container(
          margin: EdgeInsets.only(top: 4, bottom: 4),
          child: Text('${title}', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
        SizedBox(height: 16,),
        Container(
          width: 300,
          margin: EdgeInsets.only(top: 4, bottom: 4),
          child: Text(
            '${description}',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
