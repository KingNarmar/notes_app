import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/notes%20cubit/notes_cubit.dart';

import 'package:notesapp/simple_bloc_observer.dart';
import 'Pages/notes_view.dart';
import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        home: const NotesView(),
      ),
    );
  }
}
