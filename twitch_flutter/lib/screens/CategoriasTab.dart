import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitch_flutter/model/CanalTwitch.dart';
import 'package:twitch_flutter/model/Categorias.dart';
import 'package:twitch_flutter/widgetsCustom/BottomSheetCustom.dart';
import 'package:twitch_flutter/widgetsCustom/CardCategoriasSeguidas.dart';
import 'package:twitch_flutter/widgetsCustom/CardTodasCategorias.dart';
import 'package:twitch_flutter/widgetsCustom/LiveChannelItem.dart';

class CategoriasTab extends StatefulWidget {
  @override
  _CategoriasTabState createState() => _CategoriasTabState();
}

class _CategoriasTabState extends State<CategoriasTab> {
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
        child: Stack(
          children: <Widget>[
            Container(
              height: altura,
              padding: EdgeInsets.only(left: 15, top: 15),
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
                  Expanded(
                    child: SizedBox(
                      width: largura,
                      height: altura,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: categoriasRec.length,
                        itemBuilder: (context, index) {
                          Categorias cat = categoriasRec[index];
                          return CardTodasCategorias(
                            name: cat.name,
                            url: cat.urlImage,
                            tipo: cat.tipo,
                            view: cat.viewers,
                          );
                        },
                      ),
                    ),
                  )
                ],
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
