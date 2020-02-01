import 'package:flutter/material.dart';
import 'package:twitch_flutter/model/CanalTwitch.dart';
import 'package:twitch_flutter/widgetsCustom/BottomSheetCustom.dart';
import 'package:twitch_flutter/widgetsCustom/CardAoVivoTab.dart';
import 'package:twitch_flutter/widgetsCustom/CardRecomendados.dart';

class CanaisAoVivoTab extends StatefulWidget {
  @override
  _CanaisAoVivoTabState createState() => _CanaisAoVivoTabState();
}

class _CanaisAoVivoTabState extends State<CanaisAoVivoTab> {

  _bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheetCustom();
        });
  }
  
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
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
               
        ],
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FloatingActionButton.extended(
              onPressed: () {
                _bottomSheet();
              },
              icon: Icon(
                Icons.tune,
                color: Colors.white,
              ),
              label: Text(
                "Organizar e filtrar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.grey[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}