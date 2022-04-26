// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:posttest4_1915016048_muchlismardais/main.dart';
import 'package:posttest4_1915016048_muchlismardais/mainPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget teksLandingPage(String teks, double size, Color warna) {
    return Text(
      teks,
      style:
          TextStyle(fontSize: size, color: warna, fontWeight: FontWeight.w600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 280,
                    margin: EdgeInsets.only(top: 5, right: 5, left: 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MyApp().gambar('a.jpg', 'Demon Slayer'),
                        MyApp().gambar('b.jpg', 'Jujutsu Kaisen'),
                        MyApp().gambar('c.jpg', 'Home Sweet Loan'),
                        MyApp().gambar('d.jpg', 'Pagi di Amerika'),
                        MyApp().gambar('e.jpg', 'Al-Qur\'an Cordoba'),
                        MyApp().gambar('f.jpg', 'Pilar-Pilar Peradaban')
                      ],
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('assets/Gramedia.png'),
                      height: 200,
                      width: 20,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      teksLandingPage(
                          "Search for Books", 14.0, Colors.grey.shade600),
                      teksLandingPage(
                          "You haven\'t searched for any items yet...",
                          12.0,
                          Colors.grey.shade700),
                      teksLandingPage("Try now - we will help you!", 12.0,
                          Colors.grey.shade700),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Material(
          child: Container(
            margin: EdgeInsets.all(15.0),
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Start Reading Book Now',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MainPage(),
                  ),
                );
              },
            ),
          ),
          color: Colors.transparent,
        ));
  }
}
