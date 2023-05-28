import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, this.onTap,
  });
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
      const Text("Edit Notes",style: TextStyle(fontSize: 30),),
      CustomIcon(
        icon: const Icon(Icons.check,size: 30),
        onTap: onTap,
      )
    ]);
  }
}
