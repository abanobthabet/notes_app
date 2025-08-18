import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddModelButtomSheet extends StatelessWidget {
  const AddModelButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomTextFiled(hinttext: 'Title'),
            SizedBox(height: 10),
            CustomTextFiled(
              hinttext: 'Content',
              maxline: 5,
            ),
            SizedBox(height: 100),
            CustomBotton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

