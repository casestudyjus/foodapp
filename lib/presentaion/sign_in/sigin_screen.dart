import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String noti = '';
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Tamang Food Sevices',
                  style: TextStyle(fontSize: 33),
                ),
                Text(
                  'Enter your Phone number or Email address for sign in. Enjoy your food :)',
                  style: TextStyle(fontSize: 16),
                ),
                Form(
                  // key: _formKey,
                  child: Column(
                    children: [
                      Text('EMAIL ADDRESS'),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return noti = 'Please enter your email address';
                          }
                          return 'null';
                        },
                      ),
                      SizedBox(height: 20),
                      Text('PASSWORD'),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(SnackBar(content: Text('${noti}')));
                          // }
                        },
                        child: Text('Sign In'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
