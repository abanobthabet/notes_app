import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextFiled extends StatelessWidget {
 const CustomTextFiled({super.key, required this.hinttext,this.maxline=1});

 final String hinttext;
 final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimarycolor,
      maxLines:maxline ,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(color: KPrimarycolor),
        border: addoutlineinputborder(),
        enabledBorder: addoutlineinputborder(),
        focusedBorder: addoutlineinputborder(KPrimarycolor),
      ),
    );
  }

  OutlineInputBorder addoutlineinputborder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
