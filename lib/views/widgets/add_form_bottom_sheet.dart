import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddFormBottomSheet extends StatefulWidget {
  const AddFormBottomSheet({super.key});

  @override
  State<AddFormBottomSheet> createState() => _AddFormBottomSheetState();
}

class _AddFormBottomSheetState extends State<AddFormBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  
  String? title, subtitle;
  bool isLoading=true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hint: "title",
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            hint: "content",
            maxlines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 30),
          BlocBuilder<AddNotesCubitCubit, AddNotesCubitState>(
            builder: (context, state) {
              return state is AddNotesCubitLoading? CircularProgressIndicator(): CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNotesCubitCubit>(
                      context,
                    ).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
