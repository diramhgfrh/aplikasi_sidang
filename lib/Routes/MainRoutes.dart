import 'package:flutter/material.dart';
import 'package:aplikasi_sidang/screen/login/Login_Screen.dart';
import 'package:aplikasi_sidang/screen/login_sukses/Login_Sukses.dart';
import 'package:aplikasi_sidang/screen/home/home_screen.dart';
import 'package:aplikasi_sidang/screen/formulir/formulir_screen.dart';
import 'package:aplikasi_sidang/screen/scan/scan.dart';
import 'package:aplikasi_sidang/screen/login/Login_Screen.dart';

class MainRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case '/login_success':
        return MaterialPageRoute(builder: (_) => const LoginSuccessScreen());
      case '/report':
        // return MaterialPageRoute(builder: (_) => const ReportScreen());
      // case '/scan':
        // return MaterialPageRoute(builder: (_) =>  NFCScanScreen());
      default:
        // Jika tidak ada rute yang cocok, kembalikan halaman utama.
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
    }
  }
}



































// import 'package:aplikasi_sidang/main.dart';
// import 'package:flutter/material.dart';
// import 'package:aplikasi_sidang/screen/login/Login_Screen.dart';
// import 'package:aplikasi_sidang/screen/login_sukses/Login_Sukses.dart';
// import 'package:aplikasi_sidang/screen/home/home_screen.dart';
// import 'package:aplikasi_sidang/screen/report/report_screen.dart';
// import 'package:aplikasi_sidang/screen/scan/scan.dart';
// import 'package:aplikasi_sidang/screen/login/Login_Screen.dart';

// class MainRoutes {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) =>  ScanNfcPage());
//       case '/login':
//         return MaterialPageRoute(builder: (_) => const LoginScreen());
//       case '/photo':
//         return MaterialPageRoute(builder: (_) => const MyApp());
//       default:
//         return MaterialPageRoute(builder: (_) => const Home());
//     }
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:my_flutter_project/Screen/GalleryPage.dart'; // Perhatikan perbaikan penulisan dari 'GallaryPage.dart' menjadi 'GalleryPage.dart'
// // import 'package:my_flutter_project/Screen/Homepage.dart';
// // import 'package:my_flutter_project/Screen/PhotoPage.dart';

// // class MainRoutes {
// //   static Route<dynamic> generateRoute(RouteSettings settings) {
// //     // Daftar nama rute dan widget yang sesuai
// //     final List<String> routeNames = ['/', '/gallery', '/photo'];
// //     final List<Widget> widgets = [const HomePage(), const GalleryPage(), const PhotoPage()];

// //     // Loop untuk memeriksa setiap nama rute
// //     for (int i = 0; i < routeNames.length; i++) {
// //       if (settings.name == routeNames[i]) {
// //         // Jika nama rute cocok, kembalikan rute yang sesuai
// //         return MaterialPageRoute(builder: (_) => widgets[i]);
// //       }
// //     }

// //     // Jika tidak ada yang cocok, kembalikan halaman beranda secara default
// //     return MaterialPageRoute(builder: (_) => const HomePage());
// //   }
// // }