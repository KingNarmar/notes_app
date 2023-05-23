import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.color,required this.text});
 final String text;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
