import 'package:flutter/material.dart';
import 'package:hedieaty/HomePage.dart';
import 'package:hedieaty/friend_list_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => FriendsModel(), child:MaterialApp(
     title: 'Hedieaty',
      theme: ThemeData(primarySwatch: Colors.yellow),
       home: Homepage(),
    ));

  }
}
