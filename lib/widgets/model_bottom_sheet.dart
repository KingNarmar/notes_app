import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: "Content",
              maxLins: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(color: kPrimaryColor, text: "Add"),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
