

import 'package:flutter/rendering.dart';
import 'package:flutter_login/core/app.colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.inter(
    color: AppColors.blue_300,
    fontSize: 64,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle subTitle = GoogleFonts.inter(
    color: AppColors.blue_100,
    fontSize: 36,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle body = GoogleFonts.inter(
    color: AppColors.blue_200,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle placeholder = GoogleFonts.inter(
    color: AppColors.blue_100,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle button = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}