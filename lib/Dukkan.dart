import 'package:flutter/material.dart';

class Dukkan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Container ile kenarlara uzaklıklar ekleyebiliriz.
      alignment: Alignment.topLeft, //Containerın pozisyonu.
      margin: EdgeInsets.all(2.0),
      //margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
      //Containerın kenarlarına uzaklıklar ekleyebiliriz.
      color: Colors.cyanAccent, //Containerın rengi.
      child: Column(
        children: <Widget>[
          Row(
            //liste elemanlarının bir satır halinde görünmesini sağlıyor.
            children: <Widget>[
              Text(
                "Laptop, ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "16 gb Ram.",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Televizyon, ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "105 Ekran.",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Tablet, ",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "10 inc.",
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
    //BuildContext durum yönetimini kontrol altında tutar.
    var button = ElevatedButton(
      child: Text(
        "Sepete Ekle",
        textDirection: TextDirection.ltr,
      ),
      onPressed: () {
        siparisVer(context); //siparisVer() fonksiyonu çağırıyoruz.
      },
    );
    return button;
  }
}

//Butona tıkladıktan sonra ekrana gelen mesajı yazdırmak için yazdığımız widgetimiz.
siparisVer(BuildContext context) {
  //BuildContext durum yönetimini kontrol altında tutar.
  var alert = AlertDialog(
    title: Text("Sepete Ekle"),
    backgroundColor: Color.fromARGB(255, 1, 153, 255),
    content: Text("Ekleme İşlemi Tamamlandı..."),
  );
  showDialog(context: context, builder: (BuildContext context) => alert);
}
