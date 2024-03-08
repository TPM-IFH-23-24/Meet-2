import "package:flutter/material.dart";
import 'package:pertemuan_2/pertemuan2.dart';
import 'package:pertemuan_2/pertemuan3.dart';
import 'package:pertemuan_2/pertemuan3v2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
        debugShowCheckedModeBanner : false,
        // menghilangkan Debug banner pada Homepage

    );
  }
}

