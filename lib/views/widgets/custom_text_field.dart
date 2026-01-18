import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
const CustomTextField({super.key, required this.hint,  this.maxlines=1});
final String hint;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),

        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16)
        ),
      ),
    );
  }
}