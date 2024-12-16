import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_model_sheet.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        shape: const CircleBorder(), // Enforce circular shape
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
