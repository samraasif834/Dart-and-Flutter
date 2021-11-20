import 'package:flutter/material.dart';
import 'package:flutterminihackton/cart.dart';
import 'package:flutterminihackton/favourite.dart';

import 'Login1.dart';
import 'about.dart';
import 'bottomnavigation.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var items = ["Logout", "Cart", "Favaourite", "About"];
  var item2 = [
    Icon(Icons.login_outlined),
    Icon(Icons.shopping_cart),
    Icon(Icons.favorite),
    Icon(Icons.info)
  ];
  var itemNames = [
    "Shoes",
    "Suit",
    "Shirts",
    "T-Shirts",
    "Joggers",
    "Jeans",
    "TrackSuits"
  ];
  var itemNames2 = [
    "10 Pieces left",
    "5 Pieces left",
    "18 Pieces left",
    "9 Pieces left",
    "0 Pieces left",
    "3 Pieces left",
    "11 Pieces left",
  ];

  var cartImages = [
    'assets/images/shoes1.png',
    'assets/images/suit.png',
    'assets/images/shirt.png',
    'assets/images/Tshirt.png',
    'assets/images/joggers.png',
    'assets/images/jeans.png',
    'assets/images/tracksuit.png',
  ];

  var prices = [
    "\$50",
    "\$100",
    "\$150",
    "\$200",
    "\$250",
    "\$300",
    "\$350",
  ];

  var names = [Login1(), Cart(), Favourite(), About()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red.shade900),
        backgroundColor: Colors.white,
        // leading: Icon(Icons.menu,color: Colors.red.shade900,),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "Home Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.favorite),
          ),
          Icon(Icons.shopping_cart)
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                    itemCount: itemNames.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 170,
                        width: 250,
                        margin: EdgeInsets.all(8),
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            height: 50,
                            child: Image.asset(
                              cartImages[index],
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              itemNames[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              itemNames2[index],
                              style: TextStyle(
                                color: Colors.purple.shade900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      );
                      // return Horizontal(itemNames[index], itemNames2[index],
                      //     cartImages[index]);

                      // Container(
                      //   height: 150,
                      //   width: 150,
                      //   color: Colors.red,
                      //   margin: EdgeInsets.all(10),
                      //   child: Stack(children: [
                      //     Positioned(
                      //         child: Container(
                      //       color: Colors.yellow,
                      //       child: Row(
                      //         children: [
                      //           Image.asset(
                      //             'assets/images/shoes1.png',
                      //             height: 50,
                      //           ),
                      //           Expanded(
                      //             child: Text(
                      //               "Shoes",
                      //               style: TextStyle(
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.black,
                      //                 fontSize: 20,
                      //               ),
                      //             ),
                      //           ),
                      //           Column(
                      //             children: [
                      //               Expanded(
                      //                 child: Text("10 pieces",
                      //                     style: TextStyle(
                      //                       fontWeight: FontWeight.bold,
                      //                       color: Colors.black,
                      //                       fontSize: 20,
                      //                     )),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ))
                      //   ]),
                      //   // child: Center(
                      //   //   child: Text(
                      //   //     "Card ",
                      //   //     style: TextStyle(color: Colors.white),
                      //   //   ),
                      //   // ),
                      // );
                    }),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Align(
                        child: Container(
                          height: 200,
                          width: 300,
                          margin: EdgeInsets.all(8),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                child: Icon(Icons.favorite_outlined,
                                    color: Colors.red),
                              ),
                              Positioned(
                                  right: 7,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.orange.shade900,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {},
                                      child: Text("30% off"))),
                              Positioned(
                                  top: 30,
                                  left: 10,
                                  child: Image.asset(
                                    cartImages[index],
                                    height: 100,
                                    width: 300,
                                  )),
                              Positioned(
                                  top: 120,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          itemNames[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 160),
                                        child: Text(
                                          prices[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  )),
                              Positioned(
                                  top: 142,
                                  left: 270,
                                  child: Icon(Icons.shopping_cart_outlined))
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),

      // body: ListView.builder(
      //     itemCount: 7,
      //     scrollDirection: Axis.horizontal,
      //     itemBuilder: (context, index) {
      //       return Align(
      //         alignment: ,
      //         child: Container(

      //           height: MediaQuery.of(context).size.height * 0.15,
      //           width: MediaQuery.of(context).size.width * 0.6,
      //           margin: EdgeInsets.all(10),
      //           child: Text("Samraaaaaa"),
      //           color: Colors.green,
      //         ),
      //       );
      //     }),
      drawer: Drawer(
        child: Column(children: [
          Container(
            height: 150,
            width: 310,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avator.png'),
                ),
                title: Text(
                  "Username",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  "abcuser@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Container(
            height: 400,
            child: sidebar(),
          ),
        ]),
      ),
      bottomNavigationBar: Bottomnavigation(),
    );
  }

  Widget sidebar() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: item2[index],
              title: Text(items[index]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => names[index],
                  ),
                );
              },
            );
            // Text(items[index]);
          }),
    );
  }

  // Widget Horizontal(String name, String name1, String img) {
  //   return Container(
  //     height: 150,
  //     width: 150,
  //     margin: EdgeInsets.all(8),
  //     color: Colors.red,
  //     child: ListTile(
  //       leading: Container(
  //         height: 50,
  //         child: Image.asset(
  //           img,
  //         ),
  //       ),
  //       title: Text(name),
  //       subtitle: Text(name1),
  //     ),
  //   );
  // }
}


//   Widget shoe() {
//     return Container(
//       height: 100,
//       width: 150,
//       child: ListView.builder(
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             return Container(
//               height: 100,
//               width: 200,
//               child: Row(
//                 children: [
//                   Container(
//                     decoration: new BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.shade400,
//                           blurRadius: 25.0, // soften the shadow
//                           spreadRadius: 5.0,
//                         )
//                       ],
//                       color: Colors.white,
//                     ),

//                     // height: 100,
//                     // width:150 ,
//                     child: Container(
//                         height: 50,
//                         width: 150,
//                         child: Image.asset('assets/images/shoes1.png')),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );

//     Widget verticalshoes() {
//       return // return Stack(
//     //   children: [
//     //     Positioned(
//     //         child: Container(
//     //             height: 50,
//     //             width: 100,
//     //             child: Row(
//     //               children: [
//     //                 Image.asset('assets/images/shoes1.png'),
//     //                 Column(
//     //                   children: [
//     //                     Padding(
//     //                       padding: const EdgeInsets.only(top: 10),
//     //                       child: Text("Shoes"),
//     //                     ),
//     //                     Padding(
//     //                       padding: const EdgeInsets.only(top: 10),
//     //                       child: Text('10 pieces'),
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ],
//     //             ))),
//     //   ],
//     // );
//       );
//     // return Stack(
//     //   children: [
//     //     Positioned(
//     //         child: Container(
//     //             height: 50,
//     //             width: 100,
//     //             child: Row(
//     //               children: [
//     //                 Image.asset('assets/images/shoes1.png'),
//     //                 Column(
//     //                   children: [
//     //                     Padding(
//     //                       padding: const EdgeInsets.only(top: 10),
//     //                       child: Text("Shoes"),
//     //                     ),
//     //                     Padding(
//     //                       padding: const EdgeInsets.only(top: 10),
//     //                       child: Text('10 pieces'),
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ],
//     //             ))),
//     //   ],
//     // );

//     // Positioned(
//     //   top: 15,
//     //   right:35,

//     //   child: Text("Shoes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),

//     // Positioned(
//     //   top: 35,
//     //   right: 35,
//     //   child: Text("10 pieces",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
//   }
// }
