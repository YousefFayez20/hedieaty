import 'package:flutter/material.dart';

class FriendsItemTile extends StatelessWidget {

  final String Name;
  final int NumberOfEvents;
  final String imagePath;


  const FriendsItemTile({
    super.key,
  required this.Name,
  required this.NumberOfEvents,
  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [

        Image.asset(imagePath)
      ],
      ),
    );
  }
}
