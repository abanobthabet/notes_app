import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hinttext,
    this.maxline = 1,
    this.onsaved, this.onchanged,
  });

  final String hinttext;
  final int maxline;
  final Function(String?)? onsaved;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onchanged ,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty??true) {
          return 'filed is requierd';
        }
      },
      cursorColor: KPrimarycolor,
      maxLines: maxline,
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
