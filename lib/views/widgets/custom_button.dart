import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.purple[800],
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: Text("Add",style: TextStyle(color: Colors. white,fontSize: 22),),
      ),
    );
  }
}