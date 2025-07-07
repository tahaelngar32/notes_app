import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: "Edit",icon:Icons.edit),
          SizedBox(height: 24),
          CustomTextFiled(hind: "title"),
          SizedBox(height: 24),
          CustomTextFiled(hind: "content",maxLines: 5,)
        ],
      ),
    );
  }
}
