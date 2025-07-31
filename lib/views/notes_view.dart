import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      body: NotesviewBody(),
    );
  }
}
