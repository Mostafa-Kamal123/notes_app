import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
const CustomTextField({super.key, required this.hint,  this.maxlines=1, this.onsaved});
final String hint;
final int maxlines;
final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty?? true){
          return 'Field Required';
        }
      },
      onSaved: onsaved,
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