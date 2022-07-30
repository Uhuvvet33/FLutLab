import 'package:flutter/material.dart';

//Burada StatefulWidget tanımlaması yapılıyor.
class OgrenciForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OgrenciFormState();
  }
}

//Burada StatefulWidget sınıfının State sınıfınının bir örneğini oluşturuyoruz.
//Girilen değeri aynı anda göstermek için.
class OgrenciFormState extends State<OgrenciForm> {
  String OgrenciAdi = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          //Değer giribilecek bir TextField oluşturuyoruz.
          onChanged: (String deger) {
            //TextField'ın değeri değiştiğinde çalışacak.
            setState(() {//Durum yönetimi
              OgrenciAdi = deger;
            });
          },
        ),
        Text(
          "Merhaba " + OgrenciAdi,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
