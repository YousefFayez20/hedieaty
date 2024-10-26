import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hedieaty" ,
          style: TextStyle( fontSize: 22
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.symmetric())
          ],

        ),


      ),
    );
  }
}
