import 'package:flutter/material.dart';

import '../widgets/custom_search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions:  const [
          CustomSearchIcon()
        ],
      ),
    );
  }
}

