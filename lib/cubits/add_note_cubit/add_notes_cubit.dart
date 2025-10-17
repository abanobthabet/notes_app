import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constant.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addnotes(NoteModel notemodel) async {
    emit(AddNotesLoding());
    try {
      var notebox = Hive.box<NoteModel>(knotesbox);
      emit(AddNotesSuccess());
      await notebox.add(notemodel);
    } catch (e) {
      emit(AddNotesFailure(errmassege: e.toString()));
    }
  }
}
