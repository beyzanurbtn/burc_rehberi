import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget{
  final Burc secilenBurc;

  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    //print('init state çalıştı');
    //appbarRenginiBul();
    // _generator = PaletteGenerator.fromImageProvider(AssetImage(assetName)) //-> image provider bekliyorsa bunu yazıyoruz
    WidgetsBinding.instance!.addPostFrameCallback( (_) => appbarRenginiBul() );
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     primary: true,
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 250,
           pinned: true,
           backgroundColor: appbarRengi,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(widget.secilenBurc.burcAdi+ ' Burcu ve Özellikleri'),
             centerTitle: true,
             background: Image.asset('images/'+widget.secilenBurc.burcBuyukResim, fit: BoxFit.cover,),
            ),
         ),
         SliverToBoxAdapter(
           child: Container(
             margin:const EdgeInsets.all(16),
             padding:const EdgeInsets.all(8),
             child: SingleChildScrollView(
               child: Text(widget.secilenBurc.burcDetayi, 
               style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            )
          )
        ],
      )
    );
  }

  void appbarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    //PaletteGenerator.fromImage(Image.asset('images/'+widget.secilenBurc.burcBuyukResim));  //-> image bekliyorsa bunu
    appbarRengi = _generator.vibrantColor!.color;
    setState(() {
      
    });
    //print(appbarRengi);

  }
}