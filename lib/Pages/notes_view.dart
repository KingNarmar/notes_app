import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes%20cubit/notes_cubit.dart';

import '../widgets/custom_icon.dart';
import '../widgets/model_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            CustomIcon(
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return const CustomBottomSheet();
                  });
            },
            child: const Icon(Icons.add)),
      ),
    );
  }
}

