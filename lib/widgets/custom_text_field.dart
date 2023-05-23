import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import '../methods/methods.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLins = 1});
// ignore: prefer_typing_uninitialized_variables
  final hintText;
  // ignore: prefer_typing_uninitialized_variables
  final maxLins;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      maxLines: maxLins,
      decoration: InputDecoration(
        border: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(kPrimaryColor),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
