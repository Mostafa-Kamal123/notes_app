import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appBar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              CustomAppBar(title: "Edit Note",icon:Icons.check ,),
              SizedBox(height: 50,),
              CustomTextField(hint: "title"),
              SizedBox(height: 16,),
              CustomTextField(hint: "Content",maxlines: 5,)
              
            ],
          ),
        ),
    );
  }
}