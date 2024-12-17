import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/edit_note_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, bottom: 24, top: 16),
        decoration: BoxDecoration(
            color: Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "build your career with mahmoud Hossam",
                  style: TextStyle(
                      color: Color.fromARGB(255, 122, 117, 117), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text(
                "May 21,2022",
                style: TextStyle(
                    color: Color.fromARGB(255, 122, 117, 117), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
