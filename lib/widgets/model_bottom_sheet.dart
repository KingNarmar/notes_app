import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          CustomTextField(hintText: "Title",),
          SizedBox(height: 16,),
          CustomTextField(hintText: "Content",maxLins: 5,)
        ],
      ),
    );
  }
}
