import 'package:flutter/material.dart';


OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:  BorderSide(color: color)
                );
  }

