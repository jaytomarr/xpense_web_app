import 'package:flutter/material.dart';
import 'package:xpense_web_app/utils/colors.dart';

ButtonStyle borderedButton = ButtonStyle(
  elevation: WidgetStateProperty.all(0),
  backgroundColor: WidgetStateProperty.all(Colors.white),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
