import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.ontap,
    this.isloding = false,
  });
  final Function() ontap;
  final bool isloding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: KPrimarycolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: isloding
              ? SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
              : Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}
