import 'package:flutter/material.dart';
import 'package:twitch_flutter/screens/Descubra.dart';
import 'package:twitch_flutter/screens/SeguindoPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _indiceBottomNavigator = 0;
  //var cor0,cor1,cor2;

  _leadingAppBar(){
  return Container(
    //height: 10,width: 10,
    padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
    child: ClipOval(
    child: Image.network("https://pbs.twimg.com/profile_images/826488712263585792/DvI2yezW.jpg",fit: BoxFit.contain,),
  ),
  );
}

  

  @override
  Widget build(BuildContext context) {

    List<Widget> telas =[
      SeguindoPage(),      
      DescubraPage(),
      Text("Procurar"),      
    ];

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: _leadingAppBar(),
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.cast,color: Colors.white,size: 30,),
          ),
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.white,size: 30,),
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline,color: Colors.white,size: 30,),
          ),
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,size: 30,),
          ),
        ],
      ),

      body: telas[_indiceBottomNavigator],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceBottomNavigator,
        onTap: (indice){
          setState(() {
            print(indice);
            _indiceBottomNavigator = indice;
            
            /*if(indice == 0){
                   cor0 = Colors.purple[200];
                
                  cor1 = Colors.white;
                  cor2 = Colors.white;
            }
            if(indice == 1){
                   cor1 = Colors.purple[200];
                
                  cor0 = Colors.white;
                  cor2 = Colors.white;
            }
            if(indice == 2){
                   cor2 = Colors.purple[200];
                
                  cor0 = Colors.white;
                  cor1 = Colors.white;
            }*/
          });
        },
        selectedItemColor: Colors.purple[200],
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.purple[200]),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,
        //fixedColor: Colors.purple[200],
        items: [
          
          BottomNavigationBarItem(           
            title: Text("Seguindo",style: TextStyle()),
            icon: _indiceBottomNavigator != 0
            ? Icon(Icons.favorite_border,) : Icon(Icons.favorite,)
          ),

          BottomNavigationBarItem(            
            title: Text("Descubra",style: TextStyle()),
            icon: Icon(Icons.explore,)
          ),

          BottomNavigationBarItem(            
            title: Text("Procurar",style: TextStyle(),),
            icon:  Icon(Icons.content_copy,)
          ),
          
        ],
      ),
      
    );
  }
}