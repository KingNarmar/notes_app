import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'color_list.dart';

class EditViewColors extends StatefulWidget {
  const EditViewColors({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditViewColors> createState() => _EditViewColorsState();
}

class _EditViewColorsState extends State<EditViewColors> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
    
  }
}
