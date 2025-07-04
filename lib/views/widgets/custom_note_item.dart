import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      /*width: double.infinity,
      height: 100,*/
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffFFCC80),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24,left: 24,top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black,fontSize: 26),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 16),
                child: Text(
                  'buled your career with taha mohamed khair elngar',
                  style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                ),

              ),

            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("May,21,2022",
                style: TextStyle(color: Colors.black.withOpacity(.5)),),
            )
          ],
        ),
      ),
    );
  }
}
