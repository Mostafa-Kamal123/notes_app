import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddFormBottomSheet extends StatefulWidget {
  const AddFormBottomSheet({super.key});

  @override
  State<AddFormBottomSheet> createState() => _AddFormBottomSheetState();
}

class _AddFormBottomSheetState extends State<AddFormBottomSheet> {
final GlobalKey<FormState> formKey= GlobalKey();

AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

String? title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 30,),
              CustomTextField(hint: "title",
              onsaved: (value) {
                title=value;
              },
              ),
              SizedBox(height: 20,),
              CustomTextField(hint: "content",maxlines: 5,
              onsaved: (value) {
                title=value;
              },
              ),
              SizedBox(height: 30,),
              CustomButton(
                onTap: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  }else{
                    autovalidateMode=AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              )
          
            ],
          ),
        );
  }
}