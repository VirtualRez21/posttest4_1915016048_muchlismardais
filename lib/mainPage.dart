// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:posttest4_1915016048_muchlismardais/inputPage.dart';
import 'package:posttest4_1915016048_muchlismardais/landingPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page | Muchlis", style: TextStyle(fontSize: 16.0)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.orangeAccent, Colors.blue])),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 176, 240, 238),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  const UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/me.jpg')),
                    accountName: Text(
                      'Muchlis Mardais',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    accountEmail: Text('uyizdofukizi@gmail.com'),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("assets/sampul.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Landing Page',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text(
                      'Input Page',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const InputDataPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                            leading: const Icon(Icons.exit_to_app),
                            title: const Text(
                              'Quit',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            onTap: () => exit(0))
                      ],
                    ))))
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/Gramedia.png'),
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Text(
                  "Menu Data Buku",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 10,
                      decoration: TextDecoration.overline),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: gambar('a.jpg', 'Demon Slayer'),
                  ),
                  Expanded(
                    child: gambar('b.jpg', 'Jujutsu Kaisen'),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: gambar('c.jpg', 'Home Sweet Loan'),
                  ),
                  Expanded(
                    child: gambar('d.jpg', 'Pagi di Amerika'),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: gambar('e.jpg', 'Al-Qur\'an Cordoba'),
                  ),
                  Expanded(child: gambar('f.jpg', 'Pilar-Pilar Peradaban')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
