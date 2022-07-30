import 'package:flutter/material.dart';

class SehirSecim extends StatefulWidget {
  @override
  //Farklı bir yazım şekli,
  //State<StatefulWidget> createState() => SehirSecimState();
  State<StatefulWidget> createState() {
    return SehirSecimState();
  }
}

//Açılır kutu oluşturma, kullanıcının seçimini alıp onu gösteren bir widget.
//İçerisindeki değerleri göstermek.
class SehirSecimState extends State<SehirSecim> {
  var sehirler = [
    " İstanbul ",
    " Ankara ",
    " İzmir ",
    " Bursa "
  ]; //Sehirleri liste olarak tanımladık.
  String seciliSehir = " Bursa "; //Seçili sehir.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<String>(
          items: sehirler.map((String sehir) {
            //Şehirleri tektek dolaşıyoruz ve aktarıyoruz.
            return DropdownMenuItem<String>(
              child: Text(sehir), //Görünen değer.
              value: sehir, //kodla ilişkili değer.
            );
          }).toList(), //Sehirleri liste olarak gösteriyoruz.
          value: seciliSehir,
          onChanged: (String? deger) {
            //? değer null olabilir.
            setState(() {
              seciliSehir = deger!; //! değer null değilse değeri aktarıyoruz.
            });
          },
        ),
        Text(" Seçilen şehir : " + seciliSehir)
      ],
    );
  }
}
