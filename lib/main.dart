// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:posttest4_1915016048_muchlismardais/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget gambar(String path, String judul) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17.0),
            child: Image(
              image: AssetImage('assets/' + path),
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            judul,
            style: TextStyle(fontSize: 12, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget gamberHeader() {
    return Container(
      child: Image(
        image: AssetImage('assets/Gramedia.png'),
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget teksHeader(String teks) {
    return Container(
        child: Text(
      teks,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          wordSpacing: 10,
          decoration: TextDecoration.overline),
      textAlign: TextAlign.center,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muchlis Mardais App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}
