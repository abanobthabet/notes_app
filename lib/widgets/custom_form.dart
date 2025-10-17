import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_botton.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomTextFiled(
            hinttext: 'Title',
            onsaved: (data) {
              title = data;
            },
          ),
          SizedBox(height: 10),
          CustomTextFiled(
            hinttext: 'Content',
            maxline: 5,
            onsaved: (data) {
              subtitle = data;
            },
          ),
          SizedBox(height: 100),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBotton(
                isloding: state is AddNotesLoding
                    ? true
                    : false,
                ontap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formattedCurrentDate = DateFormat(
                      'dd/mm/yyyy',
                    ).format(currentdate);

                    NoteModel noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formattedCurrentDate,
                      color: KPrimarycolor.value,
                    );
                    BlocProvider.of<AddNotesCubit>(
                      context,
                    ).addnotes(noteModel);
                  } else {
                    autovalidateMode =
                        AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
