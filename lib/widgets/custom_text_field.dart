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
      maxLines: maxLins,
      decoration: InputDecoration(
        border: buildBorder(KPrimaryColor),
        enabledBorder: buildBorder(KPrimaryColor),
        focusedBorder: buildBorder(KPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: KPrimaryColor,),
      ),
    );
  }
}
