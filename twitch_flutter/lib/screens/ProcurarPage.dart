import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitch_flutter/screens/CanaisAoVivoTab.dart';
import 'package:twitch_flutter/screens/CategoriasTab.dart';

class ProcurarPage extends StatefulWidget {
  @override
  _ProcurarPageState createState() => _ProcurarPageState();
}

class _ProcurarPageState extends State<ProcurarPage> with SingleTickerProviderStateMixin{
  
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this,length: 2);
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {

     

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15),
                child: Text(
                    "Procurar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: largura * 0.1),
                  ),
              ),
                SizedBox(height: 20,),
                
                TabBar(
                  controller: _tabController,                  
                  indicatorColor: Colors.purple[300],
                  labelColor: Colors.purple[300],
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(child: Text("Categorias",style: TextStyle(fontSize: largura * 0.038,fontWeight: FontWeight.bold),),),
                    Tab(child: Text("Canais ao vivo",style: TextStyle(fontSize: largura * 0.038,fontWeight: FontWeight.bold),),),
                  ],
                ),
                Expanded(
                  //height: altura ,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      //Container(color: Colors.white,),
                      //Container(color: Colors.amber,)
                      CategoriasTab(),
                      CanaisAoVivoTab()
                      
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}