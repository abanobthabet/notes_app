import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/eidet_notes_view.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kopenbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EidetNotesView.id: (context) => EidetNotesView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: NotesView(),
    );
  }
}
