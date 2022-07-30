import 'package:flutter/material.dart'; //Material kütüphanesini ekliyoruz.
//Kullanılan Widgetleri çağırmak için kullanılır.
//Body Widgetimizi oluşturuyoruz.

class Body extends StatelessWidget {
  @override //StatelessWidget sınıfının build() metodunu override ediyoruz.
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyanAccent,
      child: Text(
        "Gövde Bölümü",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
