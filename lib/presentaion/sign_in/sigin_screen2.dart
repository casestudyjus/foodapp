import 'package:flutter/material.dart';

class SignInScreen2 extends StatefulWidget {
  const SignInScreen2({super.key});
  @override
  State<SignInScreen2> createState() => _SignInScreen2State();
}

class _SignInScreen2State extends State<SignInScreen2> {
  bool obscurePassword = true;
  static const gold = Color(0xFFEEA734);
  static const muted = Color(0xFF9E9E9E);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 375),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.maybePop(context),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                  ],
                ),
                const SizedBox(height: 28),
                const Text(
                  'Welcome to Tamang\nFood Services',
                  style: TextStyle(
                    fontSize: 33,
                    height: 1.12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF242424),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter your Phone number or Email\naddress for sign in. Enjoy your food :)',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.45,
                    color: Color(0xFF909090),
                  ),
                ),
                const SizedBox(height: 22),
                const _Label('EMAIL ADDRESS'),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(color: muted),
                    suffixIcon: Icon(Icons.check, color: gold, size: 18),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: gold),
                    ),
                  ),
                ),
                const SizedBox(height: 21),
                const _Label('PASSWORD'),
                TextField(
                  obscureText: obscurePassword,
                  style: const TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(color: muted),
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    suffixIcon: IconButton(
                      onPressed: () =>
                          setState(() => obscurePassword = !obscurePassword),
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: const Color(0xFF8E58F4),
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: gold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: muted,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                _Button(label: 'SIGN IN', color: gold, height: 48),
                const SizedBox(height: 12),
                const Center(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 11, color: muted),
                      children: [
                        TextSpan(text: "Don't have an account?   "),
                        TextSpan(
                          text: 'Create new account.',
                          style: TextStyle(color: gold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Center(
                  child: Text(
                    'Or',
                    style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
                  ),
                ),
                const SizedBox(height: 14),
                const _Social(
                  label: 'CONNECT WITH FACEBOOK',
                  color: Color(0xFF395998),
                  mark: 'f',
                  markSize: 22,
                ),
                const SizedBox(height: 10),
                const _Social(
                  label: 'CONNECT WITH GOOGLE',
                  color: Color(0xFF428544),
                  mark: 'G',
                  markSize: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class _Label extends StatelessWidget {
  const _Label(this.text);
  final String text;
  @override
  Widget build(BuildContext context) => Text(
    text,
    style: const TextStyle(
      fontSize: 12,
      letterSpacing: .2,
      fontWeight: FontWeight.w300,
      color: Color(0xFF9E9E9E),
    ),
  );
}

class _Button extends StatelessWidget {
  const _Button({
    required this.label,
    required this.color,
    required this.height,
  });
  final String label;
  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    height: height,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          letterSpacing: .8,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

class _Social extends StatelessWidget {
  const _Social({
    required this.label,
    required this.color,
    required this.mark,
    required this.markSize,
  });
  final String label;
  final Color color;
  final String mark;
  final double markSize;
  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    height: 44,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                mark,
                style: TextStyle(
                  color: color,
                  fontSize: markSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              letterSpacing: .8,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
