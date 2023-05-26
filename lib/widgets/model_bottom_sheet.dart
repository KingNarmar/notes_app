import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes%20cubit/notes_cubit.dart';

import '../cubits/add note cubit/add_note_cubit.dart';
import 'add_notes_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {}
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNotesForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
