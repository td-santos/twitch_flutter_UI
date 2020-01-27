import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardRecomendados extends StatelessWidget {
  final String nomeCanal;
  final String urlCanal;
  final String descricaoLive;
  final String game;
  final String language;
  final String viewers;
  final String urlImageLive;

  const CardRecomendados(
      {this.nomeCanal,
      this.urlCanal,
      this.descricaoLive,
      this.game,
      this.language,
      this.viewers,
      this.urlImageLive});

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Stack(
            children: <Widget>[
              Image.network(
                urlImageLive,
                height: altura * 0.21,
                width: largura * 0.8,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent[700],
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
                    child: Text(
                      "AO VIVO",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
                    child: Text(
                      "$viewers espectadores",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            width: largura * 0.83,
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        urlCanal,
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 5, bottom: 5),
                          child: Text(
                            nomeCanal,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: largura - 190,
                          padding: EdgeInsets.only(left: 5, bottom: 5),
                          child: Text(
                            descricaoLive,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, bottom: 10),
                          child: Text(
                            game,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, bottom: 5),
                          child: Container(
                              //width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 7, right: 7, top: 3, bottom: 3),
                                child: Text(
                                  language,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Icon(Icons.more_vert,color: Colors.white,),
                )
              ],
            )))
      ],
    );
  }
}
