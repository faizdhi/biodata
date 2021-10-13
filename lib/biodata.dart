import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Biodata extends StatefulWidget {
  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biodataku"),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Container(
                  height: 120,
                  width: 90,
                  child: Image(
                    image: AssetImage("images/aku.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("NIM : A11.2019.12031"),
              Text("NAMA : Faiz Dhiyaul Haq"),
              Text("Hoby : Main Game"),
              Text("Deskripsi : trying to be better"),
              TextButton(
                  onPressed: () {
                    _launchURL("https://goo.gl/maps/MK7g8SQDSa9TEomo9");
                  },
                  child: Text(
                    "Kertasari Rt.06 Rw.02",
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    _launchURL("tel:+62 82 327 508 441");
                  },
                  child: Text("082327508441",
                      style: TextStyle(color: Colors.black))),
              TextButton(
                  onPressed: () {
                    _launchURL(
                        "mailto:faizhaq467@gmai.com?subject=Email&body=Hai");
                  },
                  child: Text("faizhaq467@gmail.com",
                      style: TextStyle(color: Colors.black)))
            ],
          )
        ],
      ),
    );
  }
}
