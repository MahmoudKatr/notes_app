import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChange,
      this.controller});
  final String hintText;
  final TextEditingController? controller;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          onChanged: onChange,
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field cannot be empty';
            } else {
              return null;
            }
          },
          cursorColor: kPrimaryColor,
          maxLines: maxLines,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: kPrimaryColor),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(kPrimaryColor)),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
