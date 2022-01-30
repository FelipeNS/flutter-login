import 'package:flutter/material.dart';
import 'package:flutter_login/core/app.colors.dart';

class ButtonStyles {
  static final ButtonStyle primary = TextButton.styleFrom(
    backgroundColor: AppColors.blue_300,
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
  );
}