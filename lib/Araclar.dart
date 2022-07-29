class Araclar {
  String selamVer() {
    DateTime simdi = new DateTime.now();
    int saat = simdi.hour;
    if (saat <= 12) {
      return "Günaydın";
    } else {
      return "İyi Akşamlar";
    }
  }
}
