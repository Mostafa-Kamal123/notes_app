import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 25,color: Colors.white),),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Icon(icon,size: 25,),
          ),
        )
      ],
    );
  }
}