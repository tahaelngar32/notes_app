import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/nots_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add),
      ),
      body: const NotsViewBody(),
    );
  }
}
