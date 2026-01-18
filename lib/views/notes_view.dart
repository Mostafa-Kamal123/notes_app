import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/custom_appBar.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        }
        ,child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}

