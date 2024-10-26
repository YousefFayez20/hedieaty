import 'package:flutter/material.dart';

class FriendsModel extends ChangeNotifier{
  final List _FriendsLists = [
    ["3ziza", 3, "assets/images/Aziza.jpg"],
    ["Foolla", 0 , "assets/images/Folla.jpg"],
    ["Shawky", 2, "assets/images/Shawky.jpg"]
  ];
 // final String Name;
 // final int NumberOfEvents;
 // final String imagePath;
get FriendsLists => _FriendsLists;


}