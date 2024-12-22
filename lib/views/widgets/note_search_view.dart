import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesSearchView extends StatelessWidget {
  const NotesSearchView({super.key, required this.searchQuery});

  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = context.watch<NotesCubit>().notes ?? [];
        List<NoteModel> filteredNotes = notes.where((note) {
          return note.title.toLowerCase().contains(searchQuery.toLowerCase());
        }).toList();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
              itemCount: filteredNotes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(
                    note: filteredNotes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
