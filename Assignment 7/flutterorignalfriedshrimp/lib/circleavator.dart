import 'package:flutter/material.dart';
import 'package:flutterorignalfriedshrimp/Bottomnavigation.dart';

class Circleavator extends StatelessWidget {
  const Circleavator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Stack(
        children: <Widget>[
          Positioned(
            width: 80,
            height: 300,
            left: 10,
            child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/pizza.jpg',
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                      size: 45,
                    ),
                  ),
                )),
          ),
          Positioned(
            height: 190,
            width: 500,
            left: -45,
            top: 30,
            child: CircleAvatar(
                foregroundColor: Colors.red,
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/shrimps.jpg',
                ),
                child: Container(
                  width: 50,
                  height: 50,
                )),
          ),
          Positioned(
            width: 80,
            height: 300,
            left: 310,
            child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/sandwich.jpg',
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 45,
                    ),
                  ),
                )),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 250, left: 50),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Original Fried Shrimp",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "\$",
                            style: TextStyle(
                                color: Colors.orange.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 24)),
                        TextSpan(
                            text: "6.9",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24)),
                      ])),
                    ),
              
                  ],
                ),
              )),
          Positioned(
              top: 278,
              left: 52,
              child: Text(
                "Shrimp Category",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: 300,
              left: 52,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow.shade400,
                      size: 20,
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 350,
            left: 52,
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      "Earum assumenda iusto temporibus vel  duc \nodit Earum assumenda iusto temporibus vel   \nodit Earum assumenda iusto temporibus vel  \nEarum assumenda iusto temporibus vel  duc\nEarum assumenda iusto temporibus vel  duc",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 17)),
              TextSpan(
                  text: "\n \nRead More ....",
                  style: TextStyle(
                      color: Colors.orange.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ])),
           
          ),
          Positioned(
              top: 510,
              left: 52,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.orange.shade900,
                    ),
                    Text(
                      "   0.5 Km Distance ",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
             top: 555,
              left: 52,
              child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.remove_circle_outlined,
                  color: Colors.orange.shade900,
                  size: 35,
                ),
                Text(
                  "1",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Icon(
                  Icons.add_circle_outlined,
                  color: Colors.orange.shade900,
                  size: 35,
                ),
                SizedBox(width:15),
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )

                  ), 
                  icon:
                   Icon(Icons.shopping_cart_outlined), label:Text("Add To Cart"))
             
              ],
              
            ),
            
          ),),

           
        ],
        
      ),
      
    );
    
  }
}
