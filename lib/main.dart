import 'package:flutlab/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home()); //Home() çağırıyoruz.
}




/*
//Sınıfları buradada yazarak kullanabiliriz. 
//Kendi Widgetimizi oluşturuyoruz.
//Home Widgetimizi oluşturuyoruz.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //lib klasörünün içindeki Araclar.dart dosyası içindeki selamVer() metodunu çağırıyoruz.
    //nerde kullanılacaksa orda çağırıyoruz.
    Araclar araclar = new Araclar(); //Araclar() nesnesini oluşturuyoruz.
    return MaterialApp(
      title: "Özel Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menü: Merhaba " +
              araclar.selamVer()), //selamVer() fonksiyonu çağırıyoruz.
        ),
        body: Body(), //Body Widgetimizi çağırıyouz.
      ),
    );
  }
}

//Body Widgetimizi burda oluşturabildiğimiz gibi
//dart dosyası içerisinde yapabiliriz.
//Body Widgetimizi oluşturuyoruz.
class Body extends StatelessWidget {
  @override //StatelessWidget sınıfının build() metodunu override ediyoruz.
  Widget build(BuildContext context) {
    return Material(
      color: Colors.redAccent,
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

//Bu fonksiyon burada kullanılabildiği gibi,
//ayrı bir dosya oluşturarakta çağrılabilir, Araclar.dart dosyası.

String selamVer() {
  DateTime simdi = new DateTime.now();
  int saat = simdi.hour;
  if (saat <= 12) {
    return "Günaydın";
  } else {
    return "İyi Akşamlar";
  }
}
*/
