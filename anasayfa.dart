
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasarim_calismasi/odev3.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var screeninf=MediaQuery.of(context);
    final double screenheight=screeninf.size.height;
    final double screenwidth=screeninf.size.width;
    print("Ekranın Yüksekliği:$screenheight");
    print("Ekranın Genişliği:$screenwidth");//Çoklu ekran Desteği için

    var d= AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title:Text("pizza",style: TextStyle(color: yazirenk1,fontFamily: "Pacifico",fontSize: screenheight/24),),
        backgroundColor: anarenk,
        centerTitle: true,
    ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d!.pizzaBaslik,style: TextStyle(fontSize: 36,color: anarenk,fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChipButton(icerik: d.peynirYazi),
                ChipButton(icerik: d.sucukYazi),
                TextButton(onPressed: (){},
                  child: Text(d.zeytinYazi,style: TextStyle(color: yazirenk1),),
                  style: TextButton.styleFrom(backgroundColor: anarenk),
                ),
                TextButton(onPressed: (){},
                  child: Text(d.biberYazi,style: TextStyle(color: yazirenk1),),
                  style: TextButton.styleFrom(backgroundColor: anarenk),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure,style: TextStyle(fontSize: 22,color: yazirenk2,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik,style: TextStyle(fontSize: 22,color: anarenk,fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,style: TextStyle(fontSize: 22,color: yazirenk2),textAlign: TextAlign.center),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row (mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.fiyat,style: TextStyle(fontSize: 44,color: anarenk,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){},
                  child: Text(d.buttonYazi,style: TextStyle(color: yazirenk1,fontSize: 18),),
                  style: TextButton.styleFrom(backgroundColor: anarenk,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),//hafif oval yaptık.
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Burada `Odev3` sayfasına geçiş sağlıyoruz
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const odev3()),
                );
              },
              child: const Text("Odev3 Sayfasına Git"),
              style: ElevatedButton.styleFrom(

              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChipButton extends StatelessWidget {
  String icerik;
  ChipButton({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: Text(icerik,style: TextStyle(color: yazirenk1),),
    style: TextButton.styleFrom(backgroundColor: anarenk),
    );
  }
}
