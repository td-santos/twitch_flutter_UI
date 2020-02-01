import 'package:flutter/material.dart';

class CardCategoriasRecomendadas extends StatelessWidget {

  final String name;
  final String url;
  final String view;
  final List<String> tipo;

  const CardCategoriasRecomendadas({ this.name, this.url, this.view, this.tipo});

  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.only(right: 10),
      
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
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
          SizedBox(height: 7,),
          Text(name,maxLines: 1 ,overflow: TextOverflow.ellipsis,style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),),
          SizedBox(height: 3,),
          
          Text("$view espectadores", maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(
            fontSize: 15.5,
            color: Colors.grey
          ),),
          SizedBox(height: 7,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                //width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(25),                  
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                  child: Text(tipo[0], style: TextStyle(
                    color: Colors.white,
                    fontSize: largura *  0.033
                  ),),
                )
              ),
              SizedBox(width: 10,),
              tipo.length >1 
              //?Container(child: Text("teste"),)
              ?Container(
                
                //width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(25),                  
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                  child: Text(tipo[1], style: TextStyle(
                    color: Colors.white,
                    fontSize: largura * 0.033
                  ),),
                )
              )
              :Container()
            ],
          )
        ],
      ),
    );
  }
}