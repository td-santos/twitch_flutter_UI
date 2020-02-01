import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:twitch_flutter/model/CanalTwitch.dart';
import 'package:twitch_flutter/model/Categorias.dart';
import 'package:twitch_flutter/widgetsCustom/CardCategoriasRecomendadas.dart';
import 'package:twitch_flutter/widgetsCustom/CardCategoriasSeguidas.dart';
import 'package:twitch_flutter/widgetsCustom/CardRecomendados.dart';
import 'package:twitch_flutter/widgetsCustom/LiveChannelItem.dart';
import 'package:twitch_flutter/widgetsCustom/LiveChannelSimpleItem.dart';

class DescubraPage extends StatefulWidget {
  @override
  _DescubraPageState createState() => _DescubraPageState();
}

class _DescubraPageState extends State<DescubraPage> {
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
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Descubra",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: largura * 0.1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 300,
                child: Swiper(
                  index: 4,
                  scale: 0.93,
                  viewportFraction: 0.80,
                  itemCount: canaisAoVivo.length,
                  itemBuilder: (context, index) {
                    CanalTwitch canal = canaisAoVivo[index];
                    return LiveChannelSimpleItem(
                      urlImageLive: canal.urlImageLive,
                      viewers: canal.viewers,
                      nomeCanal: canal.nomeCanal,
                      game: canal.game,
                      language: canal.language,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "CANAIS AO VIVO RECOMENDADOS",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: largura * 0.038),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: canaisAoVivo.length,
                    itemBuilder: (context, index) {
                      CanalTwitch canal = canaisAoVivo[index];
                      return CardRecomendados(
                        urlImageLive: canal.urlImageLive,
                        viewers: canal.viewers,
                        nomeCanal: canal.nomeCanal,
                        game: canal.game,
                        language: canal.language,
                        urlCanal: canal.urlCanal,
                        descricaoLive: canal.descricaoLive,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Text(
                      "CATEGORIAS ",
                      style: TextStyle(
                          color: Colors.purple[300],
                          fontWeight: FontWeight.bold,
                          fontSize: largura * 0.038),
                    ),
                    Text(
                      "RECOMENDADAS ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: largura * 0.038),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, top: 10),
                height: 320,
                //width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriasRec.length,
                    itemBuilder: (context, index) {
                      Categorias cat = categoriasRec[index];
                      return CardCategoriasRecomendadas(
                        url: cat.urlImage,
                        name: cat.name,
                        view: cat.viewers,
                        tipo: cat.tipo,
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15,top: 10),
                child: Text(
                      "COMUNIDADES MENORES RECOMENDADAS ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: largura * 0.038),
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: canaisAoVivo.length,
                    itemBuilder: (context, index) {
                      CanalTwitch canal = canaisAoVivo[index];
                      return CardRecomendados(
                        urlImageLive: canal.urlImageLive,
                        viewers: canal.viewers,
                        nomeCanal: canal.nomeCanal,
                        game: canal.game,
                        language: canal.language,
                        urlCanal: canal.urlCanal,
                        descricaoLive: canal.descricaoLive,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
