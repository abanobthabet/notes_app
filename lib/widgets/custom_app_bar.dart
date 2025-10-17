import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.ontap});

  final String title;
  final IconData icon;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(flex: 1),
        CustomIcon(icon: icon,
        ontap:ontap ,
        ),
      ],
    );
  }
}
