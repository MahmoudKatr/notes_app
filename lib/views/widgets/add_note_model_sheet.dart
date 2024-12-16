import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Note',
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 8,
            ),
            SizedBox(
              height: 54,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
