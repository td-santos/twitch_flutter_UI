import 'package:flutter/material.dart';

class LiveChannelSimpleItem extends StatelessWidget {
  final String viewers;
  final String urlImageLive;
  final String nomeCanal;
  final String game;
  final String language;

  const LiveChannelSimpleItem(
      {this.viewers,
      this.urlImageLive,
      this.nomeCanal,
      this.game,
      this.language});

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              Image.network(
                urlImageLive,
                height: altura * 0.23,
                width: largura * 0.9,
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
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10), //padding: EdgeInsets.only(left: 15,right: 15,top: 5),
                child: Text(
                  "$nomeCanal transmitindo $game",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                //width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(25),                  
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                  child: Text(language, style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),),
                )
              ),
              )
            ],
          ),
        )
      ],
    );
  }
}
