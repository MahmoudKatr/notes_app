import 'package:flutter/material.dart';
import 'package:notes_app/views/search_note_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomAppBar(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchNoteView()));
            },
            hint: "Notes",
            icon: Icons.search,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
