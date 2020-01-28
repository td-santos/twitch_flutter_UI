import 'package:flutter/material.dart';
import 'package:twitch_flutter/model/Categorias.dart';
import 'package:twitch_flutter/widgetsCustom/CardCategoriasSeguidas.dart';

class CategoriasTab extends StatefulWidget {
  @override
  _CategoriasTabState createState() => _CategoriasTabState();
}

class _CategoriasTabState extends State<CategoriasTab> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(left: 15,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "PRICIPAIS CATEGORIAS PARA GAMES",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: largura * 0.038),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                Categorias cat = categorias[index];
                return CardCategoriasSeguidas(
                  name: cat.name,
                  url: cat.urlImage,
                  view: cat.viewers,
                );
              },
            ),
          ),
          Text(
            "TODAS AS CATEGORIAS",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: largura * 0.038),
          ),
        ],
      ),
    );
  }
}
