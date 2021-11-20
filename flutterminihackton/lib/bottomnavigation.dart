import 'package:flutter/material.dart';
import 'package:flutterminihackton/login1.dart';
import 'package:flutterminihackton/profile.dart';
import 'package:flutterminihackton/search.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  // var selectedindex;
  // var pages = [Login1(), Search(), Profile()];

  // get index => null;
  // void selecttab() {
  //   setState(() {
  //     selectedindex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.orange.shade400,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(  
          icon: Icon(
            Icons.home,
            size: 25,
            color: Colors.orange.shade400,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 25,
            color: Colors.grey,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 25,
            color: Colors.grey,
          ),
          label: 'Profile',
        ),
      ],
      
   );
  }
}
