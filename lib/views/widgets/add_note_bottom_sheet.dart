import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit_cubit.dart';
import 'package:note_app/views/widgets/add_form_bottom_sheet.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocConsumer<AddNotesCubitCubit, AddNotesCubitState>(
        listener: (context, state) {
          if(state is AddNotesCubitFailure){
            print("failed");
          }
          if(state is AddNotesCubitSuccess){
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNotesCubitLoading? true :false,
            child: SingleChildScrollView(child: AddFormBottomSheet()));
        },
      ),
    );
  }
}
