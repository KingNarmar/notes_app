import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.color, required this.text, this.onTap, this.isLoading = false});
  final String text;
  final Color color;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: isLoading ? const CircularProgressIndicator(color: Colors.black,) : Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
