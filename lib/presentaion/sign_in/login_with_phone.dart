import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Get started with Foodly'),
            Text(
              'Enter your phone number to use foodly and enjoy your food :)',
            ),
            Text(''),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    textButtonTheme: TextButtonThemeData(
                      style: ButtonStyle(
                        overlayColor: WidgetStatePropertyAll(
                          Colors.transparent,
                        ),
                        splashFactory: NoSplash.splashFactory,
                      ),
                    ),
                  ),
                  child: CountryCodePicker(
                    initialSelection: 'VN',
                    showDropDownButton: true,
                    onChanged: (country) {
                      debugPrint(country.dialCode);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
