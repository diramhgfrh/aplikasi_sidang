import 'package:flutter/material.dart';
import 'package:aplikasi_sidang/screen/formulir/component/componen.dart';

class FormulirPage extends StatelessWidget {
  const FormulirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FormPage(),
    );
  }
}