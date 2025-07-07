import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomTextFiled(hind: 'Title',),
          SizedBox(height: 16,),
          CustomTextFiled(hind: 'content',maxLines: 5,),
        ],
      ),
    );
  }
}
