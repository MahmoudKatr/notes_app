import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
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
          CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save(); // Save the changes
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context); // Close the edit view
              },
              hint: "Edit Note",
              icon: Icons.check),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onChange: (value) {
                content = value;
              },
              hintText: widget.note.subTitle,
              maxLines: 5),
          const SizedBox(
            height: 16,
          ),
          EditColorsView(note: widget.note),
        ],
      ),
    );
  }
}

class EditColorsView extends StatefulWidget {
  const EditColorsView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorsView> createState() => _EditColorsViewState();
}

class _EditColorsViewState extends State<EditColorsView> {
  late int selectedColorIndex;

  @override
  void initState() {
    selectedColorIndex =
        kColors.indexOf(Color(widget.note.color)); // Get the index of the color
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            GestureDetector(
              onTap: () {
                selectedColorIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorsShape(
                colors: kColors[index],
                isActive: selectedColorIndex == index,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
