import 'package:flutter/material.dart';
import 'package:flutterorignalfriedshrimp/circleavator.dart';

import 'Bottomnavigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  child() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search your food",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage('assets/img1.jpg'),
          ),
        ],
      ),
      body:Circleavator(), 

      bottomNavigationBar:Bottomnavigation(),
    );

  }
}
