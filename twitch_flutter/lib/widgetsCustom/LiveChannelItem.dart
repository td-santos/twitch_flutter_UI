import 'package:flutter/material.dart';

class LiveChannelItem extends StatelessWidget {
  final String nomeCanal;
  final String urlCanal;
  final String descricaoLive;
  final String game;
  final String language;
  final String viewers;
  final String urlImageLive;

  const LiveChannelItem(
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

    return Container(
      //width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 0, top: 10, right: 5,bottom: 10),
      //width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(
                urlImageLive,
                height: altura * 0.11 ,//80
                width: largura * 0.40,//160
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        viewers,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container( 
            width: MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.only(left: 15),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: ClipOval(
                    child: Image.network(urlCanal,height: 20,width: 20,fit: BoxFit.fill,),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(nomeCanal,style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text(descricaoLive,overflow: TextOverflow.ellipsis,style: TextStyle(
                fontSize: 17,
                color: Colors.white
              ),),
              SizedBox(height: 4,),
              Text(game,overflow: TextOverflow.ellipsis,style: TextStyle(
                fontSize: 17,
                color: Colors.grey
              ),),
              SizedBox(height: 7,),
              
              Container(
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
              )
            ],
          ),
          )
        ],
      ),
    );
  }
}
