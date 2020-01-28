class Categorias{
  String name;
  String urlImage;
  String viewers;
  List<String> tipo;

  Categorias(this.name, this.urlImage, this.viewers,this.tipo);


}

var categorias =[
  Categorias("Art","assets/images/art_capa.jpg","5,6 mil",["Arte"]),
  Categorias("Dead By Daylight","assets/images/deadby_capa.jpg","19,3 mil",["Ação", "Terror"]),
  Categorias("Sekiro: Shadow Die Twice","assets/images/sekiro_capa.jpg","7,1 mil",["Ação","Aventura"]),
  Categorias("The Witcher 3","assets/images/witcher3_capa.jpg","4,8 mil",["Ação","Aventura"]),
  Categorias("Zelda Breath of the Wild","assets/images/zelda_capa.jpg","2,9 mil",["Ação","Aventura"]),
];