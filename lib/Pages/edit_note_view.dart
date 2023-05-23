import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

import '../widgets/custom_icon.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Edit Note",style: TextStyle(fontSize: 30),),
        automaticallyImplyLeading: false,
        actions: const [
          CustomIcon(
            icon: Icon(Icons.check),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children:  const [
          SizedBox(height: 50,),
          CustomTextField(
            hintText: "Title",
          ),
          SizedBox(height: 16,),
          CustomTextField(
            hintText: "Content",
            maxLins: 5,
          )
        ]),
      ),
    );
  }
}
