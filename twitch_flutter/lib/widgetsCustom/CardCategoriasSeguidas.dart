import 'package:flutter/material.dart';

class CardCategoriasSeguidas extends StatelessWidget {

  final String name;
  final String url;
  final String view;

  const CardCategoriasSeguidas({this.name, this.url, this.view}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Ink.image(
            image: NetworkImage(url),
            height: 200,width: 160,
            fit: BoxFit.fill,
            child: InkWell(
              splashColor: Colors.purple[800].withOpacity(0.6),
              highlightColor: Colors.transparent,
              splashFactory: InkRipple.splashFactory,
              onTap: (){
                print("tap");
              },
            ),
          ),
          /*
          InkWell(
            onTap: (){
              print("tap");
            },
            splashColor: Colors.purple[800],
            focusColor: Colors.purple[800],
            enableFeedback: true,
            highlightColor: Colors.purple[800],
            hoverColor: Colors.green,
            child: Image.asset(url,height: 200,width: 160,fit: BoxFit.fill,),
          ),
          */
          SizedBox(height: 7,),
          Text(name,maxLines: 1 ,overflow: TextOverflow.ellipsis,style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),),
          SizedBox(height: 7,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 13,width: 13,
                decoration: BoxDecoration(
                  color: Colors.red[700],
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(view,style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16

                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}