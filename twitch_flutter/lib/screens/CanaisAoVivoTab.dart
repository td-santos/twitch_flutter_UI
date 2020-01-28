import 'package:flutter/material.dart';
import 'package:twitch_flutter/model/CanalTwitch.dart';
import 'package:twitch_flutter/widgetsCustom/CardAoVivoTab.dart';
import 'package:twitch_flutter/widgetsCustom/CardRecomendados.dart';

class CanaisAoVivoTab extends StatefulWidget {
  @override
  _CanaisAoVivoTabState createState() => _CanaisAoVivoTabState();
}

class _CanaisAoVivoTabState extends State<CanaisAoVivoTab> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
                  width: largura,
                  height: altura,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: canaisAoVivo.length,
                    itemBuilder: (context, index) {
                      CanalTwitch canal = canaisAoVivo[index];
                      return CardAoVivoTab(
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
                SizedBox(height: 15,)
        ],
      ),
    );
  }
}