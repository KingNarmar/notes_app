import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import '../methods/methods.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText});
// ignore: prefer_typing_uninitialized_variables
  final hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(color: KPrimaryColor),
      ),
    );
  }
}
