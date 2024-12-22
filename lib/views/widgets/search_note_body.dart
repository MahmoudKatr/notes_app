import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/note_search_view.dart';

class SearchNoteBody extends StatefulWidget {
  const SearchNoteBody({super.key});

  @override
  _SearchNoteBodyState createState() => _SearchNoteBodyState();
}

class _SearchNoteBodyState extends State<SearchNoteBody> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 55),
      child: Column(
        children: [
          CustomTextField(
            hintText: "Search Notes",
            controller: _searchController,
            onChange: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Expanded(child: NotesSearchView(searchQuery: _searchQuery)),
        ],
      ),
    );
  }
}
