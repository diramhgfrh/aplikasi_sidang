import 'package:aplikasi_sidang/screen/scan/componen/componen.dart';
import 'package:flutter/material.dart';

class ScanNfcPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan NFC'),
      ),
      body: Center(
        child: NFCScanPage(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:aplikasi_sidang/screen/scan/componen/componen.dart';

// class NFCScanScreen extends StatelessWidget {
//   const NFCScanScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan NFC'),
//       ),
//       body: NFCScanBody(),
//     );
//   }
// }