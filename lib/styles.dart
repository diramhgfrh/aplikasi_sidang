import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aplikasi_sidang/widget/custom_textfield.dart';
import 'package:aplikasi_sidang/screen/login/Login_Screen.dart';
import 'package:aplikasi_sidang/screen/login/component/form.dart';
import 'package:aplikasi_sidang/screen/login/component/componen.dart';

class AppColors {
  static const darkGrey = Color(0xFF635C5C);
  static const darkBlue = Color.fromARGB(255, 44, 78, 233);
  

}

class TextStyles{
  static TextStyle title = const TextStyle(
    fontFamily: 'outfit',
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: AppColors.darkGrey
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'outfit',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: AppColors.darkGrey,
  );
}