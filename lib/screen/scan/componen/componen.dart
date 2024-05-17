import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

class NFCScanPage extends StatefulWidget {
  @override
  _NFCScanPageState createState() => _NFCScanPageState();
}

class _NFCScanPageState extends State<NFCScanPage> {
  String _nfcData = 'Tekan tombol untuk memulai pemindaian';

  Future<void> _scanNFC() async {
    try {
      final NFCTag tag = await FlutterNfcKit.poll();
      setState(() {
        _nfcData = tag.id ?? 'Tag tidak terdeteksi';
      });
      await FlutterNfcKit.finish();
    } catch (e) {
      setState(() {
        _nfcData = 'Kesalahan: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFC Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.nfc,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              _nfcData,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _scanNFC,
              child: Text('Scan NFC'),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// // import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

// class NFCScanBody extends StatefulWidget {
//   const NFCScanBody({Key? key}) : super(key: key);

//   @override
//   _NFCScanBodyState createState() => _NFCScanBodyState();
// }

// class _NFCScanBodyState extends State<NFCScanBody> {
//   String _nfcMessage = "Dekatkan perangkat ke NFC tag";

//   Future<void> _scanNFC() async {
//     try {
//       // Memulai scan NFC
//       NFCTag tag = await FlutterNfcKit.poll();
//       // Menampilkan informasi tag
//       setState(() {
//         _nfcMessage = 'Tag detected: ${tag.id}\nStandard: ${tag.standard}\nType: ${tag.type}\nATQA: ${tag.atqa}\nSAK: ${tag.sak}';
//       });
//       // Hentikan polling NFC
//       await FlutterNfcKit.finish(iosAlertMessage: "Scan selesai");
//     } catch (e) {
//       setState(() {
//         _nfcMessage = 'Error: $e';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.nfc,
//             size: 100,
//             color: Colors.blue,
//           ),
//           SizedBox(height: 20),
//           Text(
//             _nfcMessage,
//             style: TextStyle(fontSize: 20),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: _scanNFC,
//             child: Text('Scan NFC'),
//           ),
//         ],
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:bismillahsidang/screen/scan/scan.dart';


// // class ScanNfcButton extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ElevatedButton(
// //       onPressed: () {
// //         // Tambahkan logika untuk pembacaan tag NFC di sini
// //       },
// //       child: Text('Scan NFC'),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';

// // class NFCScanBody extends StatelessWidget {
// //   const NFCScanBody({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Icon(
// //             Icons.nfc,
// //             size: 100,
// //             color: Colors.blue,
// //           ),
// //           SizedBox(height: 20),
// //           Text(
// //             'Dekatkan perangkat ke NFC tag',
// //             style: TextStyle(fontSize: 20),
// //             textAlign: TextAlign.center,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

