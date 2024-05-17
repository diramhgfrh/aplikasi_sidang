// import 'package:aplikasi_sidang/screen/scan/scan.dart';
import 'package:flutter/material.dart';


class BottomNavigationBarExample extends StatefulWidget {
  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Logika navigasi berdasarkan item yang dipilih
    switch (index) {
      case 0:
        // Navigasi ke halaman home (jika diperlukan)
        break;
      case 1:
        // Navigasi ke halaman scan
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => NFCScanScreen()), // Ganti dengan halaman Scan yang sesuai
        // );
        // break;
      case 2:
        // Navigasi ke halaman settings (jika diperlukan)
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Image.asset(
          'asset/ic-pertaarungas.png',
          width: 120,
          height: 120,
        ),
        actions: [
          Row(
            children: [
              Text(
                'Dira',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                icon: Icon(Icons.account_circle, size: 35),
                onPressed: () {
                  // Add any actions you want to perform when the user avatar is pressed
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreenAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
    );
  }

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Home(), // This will be the widget for the Home page
  //   Report(), // This will be the widget for the Report page
  //   Setting(), // This will be the widget for the Setting page
  // ];
}

