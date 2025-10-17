import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/eidet_notes_view.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EidetNotesView.id,arguments: noteModel);
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 14,
          bottom: 23,
        ),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  noteModel.subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withValues(
                      alpha: 0.4,
                    ),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NotesCubit>(
                    context,
                  ).fetshnotes();
                },
                icon: Icon(
                  size: 20,
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  noteModel.date,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withValues(
                      alpha: 0.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
