import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_list_view.dart';
import 'package:notes_app/widgets/custom_note_app.dart';

class NotesviewBody extends StatefulWidget {
  const NotesviewBody({super.key});

  @override
  State<NotesviewBody> createState() =>
      _NotesviewBodyState();
}

class _NotesviewBodyState extends State<NotesviewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetshnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(
            child: BlocBuilder<NotesCubit, NotesCubitState>(
              builder: (context, state) {
                return CustomListView(
                  notes:
                      BlocProvider.of<NotesCubit>(
                        context,
                      ).notes ??
                      [],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
