import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_model_sheet.dart';
import 'package:notes_app/widgets/custom_notes_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            context: context,
            builder: (context) {
              return AddModelButtomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),

      body: NotesviewBody(),
    );
  }
}
