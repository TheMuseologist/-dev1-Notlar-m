import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Bugün ne yesem?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
   YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              ),
              onPressed: (){
                buildSetState();
              },
                child: Image.asset('images/corba_$corbaNo.jpg'),
            ),
          ),
          ),
          Text(
            MenuIsim().corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  buildSetState();
              },
            child: Image.asset('images/yemek_$yemekNo.jpg')),
          ),
          ),
          Text(
            MenuIsim().yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(onPressed: () {
              buildSetState();
            },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Image.asset('images/tatli_$tatliNo.jpg')),
          ),
          ),
          Text(
            MenuIsim().tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void buildSetState() {
     setState(() {
                corbaNo = Random().nextInt(5)+1;
                yemekNo = Random().nextInt(5)+1;
                tatliNo = Random().nextInt(5)+1;
              });
  }
}

class MenuIsim {
  List <String> corbaAdlari = ['Mercimek', 'Tarhana', 'Tavuksuyu', 'Düğün Çorbası', 'Yoğurt Çorbası'];
  List <String> yemekAdlari = ['Karnıyarık', 'Mantı', 'Kuru Fasülye', 'İçli Köfte', 'Balık'];
  List<String> tatliAdlari = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazandibi', 'Dondurma'];
}

