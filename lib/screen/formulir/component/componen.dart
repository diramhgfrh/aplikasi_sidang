import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulir'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormWidget(),
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              'Keterangan:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan keterangan di sini',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
         SizedBox(height: 16.0), // Spasi antara kolom input
        Row(
          children: [
            Text(
              'Keterangan:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan keterangan di sini',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
         SizedBox(height: 16.0), // Spasi antara kolom input
        Row(
          children: [
            Text(
              'Keterangan:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan keterangan di sini',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
         SizedBox(height: 16.0), // Spasi antara kolom input
        Row(
          children: [
            Text(
              'Keterangan:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan keterangan di sini',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
         SizedBox(height: 16.0), // Spasi antara kolom input
        SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk menyimpan data formulir
          },
          child: Text('Simpan'),
        ),
      ],
    );
  }
}
