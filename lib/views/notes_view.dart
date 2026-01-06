import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appBar.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}

