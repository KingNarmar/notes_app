import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

import '../constants.dart';
import '../cubits/add note cubit/add_note_cubit.dart';
import 'color_list.dart';
import 'custom_app_bar.dart';

import 'custom_text_field.dart';
import 'edit_view_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.supTitle = subTitle ?? widget.note.supTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: widget.note.supTitle,
            maxLins: 5,
            onChanged: (vlaue) {
              subTitle = vlaue;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          EditViewColors(note: widget.note),
        ],
      ),
    );
  }
}

