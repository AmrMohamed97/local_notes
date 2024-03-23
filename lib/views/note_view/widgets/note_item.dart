import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_notes_app/views/edit_note/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const EditNoteVew()));
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(top: 24.0, start: 24.0),
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter tibs',
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'Build your carer for your self & family',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18.0,
                  ),
                ),
              ),
              trailing: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
            Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 16.0, bottom: 24, end: 24.0),
                child: Text(
                  'may21,2022',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
