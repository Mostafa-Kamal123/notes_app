import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            CustomTextField(hint: "title",),
            SizedBox(height: 20,),
            CustomTextField(hint: "content",maxlines: 5,),
            SizedBox(height: 30,),
            CustomButton()
        
          ],
        ),
      ),
    );
  }
}