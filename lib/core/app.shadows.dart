import 'package:flutter/material.dart';
import 'package:flutter_login/core/core.dart';

class AppShadows {
  static final box = BoxShadow(
    blurRadius: 4.0,
    spreadRadius: 2.0,
    color: AppColors.shadow,
    offset: const Offset(0.0, 2.0)
  );
}