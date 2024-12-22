import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class SearchNoteBody extends StatelessWidget {
  const SearchNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 55),
      child: Column(
        children: [
          CustomTextField(hintText: "Search Notes"),
        ],
      ),
    );
  }
}
