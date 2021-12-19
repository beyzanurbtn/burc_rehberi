import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'burc_item.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;

  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
    // print(tumBurclar);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return BurcItem(listelenilenBurc: tumBurclar[index]);
        }, 
        itemCount: tumBurclar.length,
        )
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for(int i=0; i<12; i++){
      var burcAdi = Strings.burcAdlari[i];
      var burcTarih = Strings.burcTarihleri[i];
      var burcDetay = Strings.burcGenelOzellikleri[i];
      var burcKucukResim = Strings.burcAdlari[i].toLowerCase() + '${i+1}.png' ;
      var burcBuyukResim = Strings.burcAdlari[i].toLowerCase() + '_buyuk' + '${i+1}.png' ;
      Burc eklenecekBurc = Burc( burcAdi, burcBuyukResim, burcDetay, burcKucukResim, burcTarih);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}