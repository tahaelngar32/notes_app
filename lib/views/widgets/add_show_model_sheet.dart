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
        child: Column(
          children: [
            CustomTextFiled(
              hind: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextFiled(
              hind: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 16),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

