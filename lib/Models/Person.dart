import 'package:flutter/cupertino.dart';

class Person{
  final String name ;
  final String imageURL ;
  final int age ;
  final String bio ;

  Person(@required this.name, @required this.imageURL , @required this.age,  @required this.bio);
}

List<Person> per = [
] ;