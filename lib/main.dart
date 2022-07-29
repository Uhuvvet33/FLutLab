import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "İlk Görsel Uygulama",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Başlığı"),
        ), //AppBar Sonu
        body: Material(
          color: Colors.cyan,
          child: Center(
              child: Text(
            "Merhaba Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 50.0,
            ),
          )),
        ),
      )));
}
