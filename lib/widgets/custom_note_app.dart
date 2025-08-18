import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/eidet_notes_view.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EidetNotesView.id);
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 14,
          bottom: 23,
        ),
        decoration: BoxDecoration(
          color: Color(0xffD6AA66),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  'Build your career with Abanob Thabet',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withValues(
                      alpha: 0.4,
                    ),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
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
                  'may 21 ,2025',
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
