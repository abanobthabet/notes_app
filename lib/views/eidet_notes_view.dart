import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class EidetNotesView extends StatelessWidget {
  const EidetNotesView({super.key});
  static String id = 'EidetNotesView';
  @override
  Widget build(BuildContext context) {
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
            ),
            SizedBox(height: 50),
            CustomTextFiled(hinttext: 'Title'),
            SizedBox(height: 15),
            CustomTextFiled(
              hinttext: 'Contant',
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}
