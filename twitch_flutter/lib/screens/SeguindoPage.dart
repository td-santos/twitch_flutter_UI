import 'package:flutter/material.dart';
import 'package:twitch_flutter/model/CanalTwitch.dart';
import 'package:twitch_flutter/model/Categorias.dart';
import 'package:twitch_flutter/widgetsCustom/CardCategoriasSeguidas.dart';
import 'package:twitch_flutter/widgetsCustom/LiveChannelItem.dart';

class SeguindoPage extends StatefulWidget {
  @override
  _SeguindoPageState createState() => _SeguindoPageState();
}

class _SeguindoPageState extends State<SeguindoPage> {

  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Seguindo",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: largura * 0.1
              ),),
              SizedBox(height: 25,),
              Text("CATEGORIAS SEGUIDAS",style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: largura * 0.038
              ),),
              SizedBox(height: 15,),
              SizedBox(
                height: 300,
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: categorias.length,
                itemBuilder: (context,index){
                  
                  Categorias cat = categorias[index];
                  return CardCategoriasSeguidas(
                    name: cat.name,
                    url: cat.urlImage,
                    view: cat.viewers,
                  );
                },
              ),
              ),
                
              Text("CANAIS AO VIVO",style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: largura * 0.038
              ),),
              SizedBox(height: 15,),
              SizedBox(
                width: largura,
                height: altura,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: canaisAoVivo.length ,
                  itemBuilder: (context,index){
                    CanalTwitch canal = canaisAoVivo[index];
                    return LiveChannelItem(
                      urlImageLive: canal.urlImageLive,
                      viewers: canal.viewers,
                      urlCanal: canal.urlCanal,
                      game: canal.game,
                      descricaoLive: canal.descricaoLive,
                      language: canal.language,
                      nomeCanal: canal.nomeCanal,
                    );
                  },
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      
    );
  }
}