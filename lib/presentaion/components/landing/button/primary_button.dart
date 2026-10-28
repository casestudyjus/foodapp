import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget { const PrimaryButton({super.key, required this.label, required this.color, required this.height, required this.onPressed}); final String label; final Color color; final double height; final VoidCallback onPressed; @override Widget build(BuildContext context) => SizedBox(width: double.infinity, height: height, child: ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(backgroundColor: color, foregroundColor: Colors.white), child: Text(label))); }
