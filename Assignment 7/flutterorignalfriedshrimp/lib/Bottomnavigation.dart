import 'package:flutter/material.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels:false,
          selectedItemColor: Colors.orange.shade900,
          unselectedItemColor: Colors.grey.shade500,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore_outlined,
             size: 25,
        color: Colors.grey.shade500,
          ),label: "explore",
         
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
             size: 25,
            color: Colors.grey.shade500,
          ),
          label: 'save',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.replay_5 ,
             size: 25,
            color: Colors.grey.shade500,
          ),
          label: 'replay',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_active_rounded  ,
             size: 25,
            color: Colors.orange.shade900,
             
          ),
          label: 'notification',
        ),
         
        
      ],
    ));
  }
}
  