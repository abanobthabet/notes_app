import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_form.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddModelButtomSheet extends StatelessWidget {
  const AddModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('Filed');
          }

          if (state is AddNotesSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(
              context,
            ).fetshnotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoding
                ? true
                : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(
                  context,
                ).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: CustomForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
