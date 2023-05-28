import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';


import '../widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note, this.onTap});
  final NoteModel note;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text(
      //     "Edit Note",
      //     style: TextStyle(fontSize: 30),
      //   ),
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     CustomIcon(
      //       icon: const Icon(Icons.check),
      //       onTap: onTap,
      //     )
      //   ],
      // ),
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
