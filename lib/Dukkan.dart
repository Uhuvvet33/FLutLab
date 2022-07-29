import 'package:flutter/material.dart';

class Dukkan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Container ile kenarlara uzaklıklar ekleyebiliriz.
      alignment: Alignment.topLeft, //Containerın pozisyonu.
      margin: EdgeInsets.all(20.0),
      //margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
      //Containerın kenarlarına uzaklıklar ekleyebiliriz.
      color: Colors.lime, //Containerın rengi.
      child: Column(
        children: <Widget>[
          Row(
            //liste elemanlarının bir satır halinde görünmesini sağlıyor.
            children: <Widget>[
              Text(
                "Laptop ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "16 gb Ram ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Televizyon ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "105 Ekran ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
          SiparisButonu(), //SiparisButonu Widgetimizi çağırıyoruz.
        ],
      ),
    );
  }
}

//Buton widgetimizi oluşturuyoruz.
class SiparisButonu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = ElevatedButton(
      child: Text(
        "Sepete Ekle",
        textDirection: TextDirection.ltr,
      ),
      onPressed: () {
        print("tıklandı");
      },
    );
    return button;
  }
}
