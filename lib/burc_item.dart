// import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenilenBurc;
  const BurcItem({required this.listelenilenBurc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/burcDetay', arguments: listelenilenBurc);
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BurcDetay(secilenBurc: listelenilenBurc)));
            },
            leading: Image.asset("images/" + listelenilenBurc.burcKucukResim),
            title: Text(listelenilenBurc.burcAdi,
            style: myTextStyle.headline5,),
            subtitle: Text(listelenilenBurc.burcTarihi,
            style: myTextStyle.subtitle1,),
            trailing:const Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }

}