import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class EidetNotesView extends StatefulWidget {
  const EidetNotesView({super.key});
  static String id = 'EidetNotesView';

  @override
  State<EidetNotesView> createState() =>
      _EidetNotesViewState();
}

class _EidetNotesViewState extends State<EidetNotesView> {
  String? title;
  String? contant;
  @override
  Widget build(BuildContext context) {
    NoteModel noteModel =
        ModalRoute.of(context)!.settings.arguments
            as NoteModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Edite Note',
              icon: Icons.check,
              ontap: () {
                noteModel.title = title ?? noteModel.title;
                noteModel.subtitle =
                    contant ?? noteModel.subtitle;
                noteModel.save();
                BlocProvider.of<NotesCubit>(
                  context,
                ).fetshnotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustomTextFiled(
              hinttext: 'Title',
              onchanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 15),
            CustomTextFiled(
              hinttext: 'Contant',
              maxline: 5,
              onchanged: (value) {
                contant = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
