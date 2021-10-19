import 'package:flutter/material.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFFE57373),
          unselectedItemColor: Color(0xFFE57373),
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
             size: 25,
            color: Color(0xFFE57373),
          ),label: "Home",
         
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.grid_view_rounded,
             size: 25,
            color: Color(0xFFE57373),
          ),
          label: 'Catalog',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
             size: 25,
            color: Color(0xFFE57373),
          ),
          label: 'Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined ,
             size: 25,
            color: Color(0xFFE57373),
             
          ),
          label: 'Profile',
        ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.more_horiz,
            size: 25,
            color: Color(0xFFE57373),
          ),
          label: 'More',
        ),
        
      ],
    ));
  }
}
