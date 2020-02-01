import 'package:flutter/material.dart';

class CardTodasCategorias extends StatelessWidget {
  final String name;
  final String url;
  final String view;
  final List<String> tipo;

  const CardTodasCategorias({this.name, this.url, this.view, this.tipo});

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Container(
      
      padding: EdgeInsets.only(left: 0, top: 10, right: 5, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(
            url,
            height: altura * 0.11,
            width: largura * 0.18,
            fit: BoxFit.fill,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$view espectadores",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
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
                          padding: EdgeInsets.only(
                              left: 7, right: 7, top: 3, bottom: 3),
                          child: Text(
                            tipo[0],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    tipo.length > 1
                        //?Container(child: Text("teste"),)
                        ? Container(

                            //width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 7, right: 7, top: 3, bottom: 3),
                              child: Text(
                                tipo[1],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ))
                        : Container()
                  ],
                  
                )
                ,SizedBox(height: 3,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
