import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hedieaty/friend_list_model.dart';
import 'package:hedieaty/friends_item_tile.dart';
import 'package:provider/provider.dart';


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
          style:GoogleFonts.notoSerif(fontSize: 26)
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
            Padding(padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Surprise!"),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Gift yourself and the others!",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: .0),
              child: Divider(thickness: 3,color: Colors.blueGrey[200],),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Friends",
              style: TextStyle(fontSize: 16)
              ),
            ),
            Expanded(

                child: Consumer<FriendsModel>(builder: (context, value, child) {

                  return GridView.builder(
                    itemCount: value.FriendsLists.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                      itemBuilder: (context , index){
                      return FriendsItemTile(
                      Name: value.FriendsLists[index][0],
                        NumberOfEvents: value.FriendsLists[index][1],
                        imagePath: value.FriendsLists[index][2],
                     );

}
);
                }
                ,)


            )
          ],

        ),


      ),
    );
  }
}
