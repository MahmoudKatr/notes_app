import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomAppBar(onPressed: () {}, hint: "Edit Note", icon: Icons.check),
          const SizedBox(
            height: 50,
          ),
          const CustomTextField(hintText: "Title"),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
