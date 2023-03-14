import 'package:flutter/cupertino.dart';

class Location{
  num? lat,lng;

  Location(this.lat,this.lng);

  Location.create(this.lng,this.lat);

  void elevat(){
    print('$lng $lat');

  }
}


class ElevatedLocation extends Location{
  num elevated;
  ElevatedLocation(num? lat, num? lng, this.elevated) : super(lat, lng);


  @override
  void elevat() {
print('$elevated');
  }
   @override
  String toString() {
var result = '$lat , $lng $elevated';
    return result;
  }

}


abstract class  Animal{
  void breathig();
  void makeNoise(){
    print('Making animals noises!');
  }
}

class Person implements Animal {

  String? name , nationality;

  @override
  void breathig() {
  print('Person breathing trough nostrils! ');
  }

  @override
  void makeNoise() {
   print ("Person shouting !");
  }

  @override
  String toString() => '$name $nationality';


}

class Comedian extends Person implements isFunny {

  Comedian(String name, nationality);

  @override
  void methodPeopleLaugh() {
  print('Bu yerda nimadur bo\'lishi kerak!');
  }

}


abstract class isFunny{
  void methodPeopleLaugh();

}

class TVShow implements isFunny{
  String? name;

  @override
  void methodPeopleLaugh() {
    print('O\'sha gap');

  }

}


void main(){

var comed =Comedian('name', 'nationality');
comed.name;
comed.nationality;

  var person= Person();
  person.name;
  person.breathig();
  person.makeNoise();
  person.toString();

  var elevated=ElevatedLocation(124, 765, -5543);

  print(elevated);




}