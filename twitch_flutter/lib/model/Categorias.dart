class Categorias{
  String name;
  String urlImage;
  String viewers;
  List<String> tipo;

  Categorias(this.name, this.urlImage, this.viewers,this.tipo);


}

var categorias =[
  Categorias("Art","https://static-cdn.jtvnw.net/ttv-boxart/Art-285x380.jpg","5,6 mil",["Arte"]),
  Categorias("Dead By Daylight","https://static-cdn.jtvnw.net/ttv-boxart/Dead%20by%20Daylight-285x380.jpg","19,3 mil",["Ação", "Terror"]),
  Categorias("Sekiro: Shadow Die Twice","https://static-cdn.jtvnw.net/ttv-boxart/Sekiro:%20Shadows%20Die%20Twice-285x380.jpg","7,1 mil",["Ação","Aventura"]),
  Categorias("The Witcher 3","https://static-cdn.jtvnw.net/ttv-boxart/The%20Witcher%203:%20Wild%20Hunt-285x380.jpg","4,8 mil",["Ação","Aventura"]),
  Categorias("Zelda Breath of the Wild","https://static-cdn.jtvnw.net/ttv-boxart/The%20Legend%20of%20Zelda:%20Breath%20of%20the%20Wild-285x380.jpg","2,9 mil",["Ação","Aventura"]),
];

var categoriasRec = [

  Categorias(
    "League of Legends",
    "https://static-cdn.jtvnw.net/ttv-boxart/League%20of%20Legends-285x380.jpg", 
    "260.6 mil", 
    ["MOBA"]
  ),
  Categorias(
    "Fortnite",
    "https://static-cdn.jtvnw.net/ttv-boxart/Fortnite-285x380.jpg", 
    "91.7 mil", 
    ["Batle royale","FPS"]
  ),
  Categorias(
    "Dragon Ball Z: Kakarot",
    "https://static-cdn.jtvnw.net/ttv-boxart/Dragon%20Ball%20Z:%20Kakarot-285x380.jpg", 
    "4.3 mil", 
    ["Ação","RPG"]
  ),
  Categorias(
    "FIFA 20",
    "https://static-cdn.jtvnw.net/ttv-boxart/FIFA%2020-285x380.jpg", 
    "94.5 mil", 
    ["Esportes"]
  ),
  Categorias(
    "Counter-Srike: Globar Offence",
    "https://static-cdn.jtvnw.net/ttv-boxart/Counter-Strike:%20Global%20Offensive-285x380.jpg", 
    "216.1 mil", 
    ["FPS"]
  ),
  Categorias(
    "Hearthstone",
    "https://static-cdn.jtvnw.net/ttv-boxart/Hearthstone-285x380.jpg", 
    "26.2 mil", 
    ["Jogo de cartas"]
  ),
  Categorias(
    "Overwatch",
    "https://static-cdn.jtvnw.net/ttv-boxart/Overwatch-285x380.jpg", 
    "22.3 mil", 
    ["MOBA","FPS"]
  ),
  Categorias(
    "PLAYERUNKNOWN'S BATTLEGROUNDS",
    "https://static-cdn.jtvnw.net/ttv-boxart/PLAYERUNKNOWN%27S%20BATTLEGROUNDS-285x380.jpg", 
    "29.9 mil", 
    ["Battle Royale"]
  ),
];