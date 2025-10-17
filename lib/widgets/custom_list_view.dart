import 'package:flutter/widgets.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_app.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.notes});
 final List<NoteModel> notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: NoteApp(noteModel: notes[index],),
          );
        },
      ),
    );
  }
}
