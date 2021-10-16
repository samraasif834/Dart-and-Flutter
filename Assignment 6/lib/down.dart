import 'package:flutter/material.dart';

class Down extends StatelessWidget {
  const Down({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
        child: BottomNavigationBar(
        backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,
          color: Colors.white,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_off_sharp,
           color: Colors.white,),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add,
           color: Colors.white,),
          label: 'add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline_rounded,
           color: Colors.white,
          ),
          label: 'activity',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/img1.jpg'),
          ),
          label: 'avator',
        ),
      ],
    ));
  }
}
