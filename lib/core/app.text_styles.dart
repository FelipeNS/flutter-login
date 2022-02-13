

import 'package:flutter/rendering.dart';
import 'package:flutter_login/core/app.colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.nunito(
    color: AppColors.blue_300,
    fontSize: 64.0,
    fontWeight: FontWeight.w800,
    height: 1.0,
  );

  static final TextStyle subTitle = GoogleFonts.nunito(
    color: AppColors.blue_100,
    fontSize: 36.0,
    fontWeight: FontWeight.w800,
    height: 1.0,
  );

  static final TextStyle body = GoogleFonts.nunito(
    color: AppColors.blue_200,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none
  );

  static final TextStyle bodyBold = GoogleFonts.nunito(
    color: AppColors.blue_200,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none
  );

  static final TextStyle placeholder = GoogleFonts.nunito(
    color: AppColors.blue_100,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle button = GoogleFonts.nunito(
    color: AppColors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle errorMessage = GoogleFonts.nunito(
    color: AppColors.error,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none
  );
}