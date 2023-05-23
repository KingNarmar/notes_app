import 'package:flutter/material.dart';

import '../widgets/custom_icon.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Edit Note"),
        automaticallyImplyLeading: false,
        actions: const [
          CustomIcon(
            icon: Icon(Icons.check),
          )
        ],
      ),
    );
  }
}
