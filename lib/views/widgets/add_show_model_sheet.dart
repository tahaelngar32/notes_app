import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        // عشان يحصل اسكرول وانا بكتب في الفيلد
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title,subTitle;
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          CustomTextFiled(
            onSaved: (value){
              title = value;
            },
            hind: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            onSaved: (value){
              subTitle = value;
            },
            hind: 'content',
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
