import 'package:flutter/material.dart';


import '../widgets/custom_note_item.dart';
import '../widgets/custom_search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes",style: TextStyle(fontSize: 30),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [CustomSearchIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: const [
          CustomNoteItem()
        ]),
      ),
    );
  }
}

