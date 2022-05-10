class Dataa{
  late String power;
  late String temp;
  late String name;

  Dataa(this.name, this.temp, this.power);

  Dataa.fromJson(Map<String, dynamic> json){
    name= json['name'];
    temp= json['temp'];
    power= json['power'];
  }

}