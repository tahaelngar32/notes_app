import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'nots_list_view.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 24,
          ),
          Expanded(child: NotsListView()),
        ],
      ),
    );
  }
}

