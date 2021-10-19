import 'package:flutter/material.dart';
import 'package:flutterscreenjp/Bottomnavigation.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var shoesNames1 = ["Men's ", "Men's", "Side blocks"];
  var shoesNames2 = ["FuelCell Echo", "FuelCell Rebel", "1200"];
  var shoesNames3 = ["Men's ", "Men's ", "Men's "];
  var images = [
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg'
  ];
  var price = ["\$99.99", "\$129.99", "\$139.99"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/img1.jpg'),
          ),
          title: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "mobi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                )),
            TextSpan(
                text: "sport",
                style: TextStyle(
                  color: Color(0xFFBDBDBD),
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ))
          ])),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 33,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: [
              const SizedBox(
                height: 2,
              ),
              navbar(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return abc(shoesNames1[index], shoesNames2[index],
                      shoesNames3[index], images[index], price[index]);
                },
             
              )
          
            ],
            

            
  

        
        )
        
       ),
        ),
        bottomNavigationBar: Bottomnavigation(),
        );
        
   
  }
  
  


Widget abc(String nametxt1, String nametxt2, String nametxt3, String img,
    String price) {
  return Column(
    children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(216, 207, 207, 1.0),
                    blurRadius: 30.0,
                    offset: Offset(0, 10))
              ],
            ),
            height: 170,
            width: 400,
            child: Container(
              height: 50,
              width: 120,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      height: 170,
                      width: 200,
                      left: -45,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(img))),
                      )),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 60, top: 32, bottom: 5),
                      child: Column(children: <Widget>[
                        Text(nametxt1,
                            style: TextStyle(
                              color: Color.fromRGBO(76, 73, 73, 1.0),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(nametxt2,
                            style: TextStyle(
                              color: Color.fromRGBO(76, 73, 73, 1.0),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(height: 12),
                        Text(nametxt3,
                            style: TextStyle(
                              color: Color.fromRGBO(76, 73, 73, 1.0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        Container(
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.star_border_purple500_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border_purple500_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border_purple500_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border_purple500_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Icon(
                                    Icons.star_border_purple500_rounded,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(price,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                            )),
                        

                        Positioned(
                            height: 170,
                            width: 200,
                            left: -45,
                            child: Container(
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: AssetImage(img))),
                            )),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      
    ],
  );
}

Widget navbar() {
  return Container(
    height: 50,
    margin: EdgeInsets.only(top: 10),
    color: Colors.white,
    child: Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            "Running",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          width: 190,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "15 results",
              style: TextStyle(
                color: Color(0xFF616161),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}
