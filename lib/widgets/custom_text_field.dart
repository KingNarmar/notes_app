import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import '../methods/methods.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.hintText, this.maxLins = 1, this.onSaved});
// ignore: prefer_typing_uninitialized_variables
  final hintText;
  // ignore: prefer_typing_uninitialized_variables
  final maxLins;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field Is Requerd";
        } else {
          return null;
        }
      },
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
