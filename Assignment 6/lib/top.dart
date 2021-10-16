import 'package:flutter/material.dart';
import 'package:flutterinstaclone/down.dart';
import 'package:flutterinstaclone/feed.dart';
import 'package:flutterinstaclone/story.dart';
import 'package:google_fonts/google_fonts.dart';

class Top extends StatelessWidget {
  const Top({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Instagram",  
         style: GoogleFonts.lobsterTwo(
        fontSize:35,
        color:Colors.white,
      ),  
    ),
    actions: [Icon(Icons.send_rounded)]
    
    ),

  body:Column(
    children: [
      Story(),
      Expanded(child: Post(),)
    ],
  ),

   
  
    bottomNavigationBar: Down(),
   
    );
  }
}