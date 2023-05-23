import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import 'add_notes_form.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNotesForm(),
      ),
    );
  }
}

