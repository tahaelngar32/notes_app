import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          CustomTextFiled(),
        ],
      ),
    );
  }
}
