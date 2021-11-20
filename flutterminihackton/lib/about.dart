import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.41,
            width: MediaQuery.of(context).size.width*1,
            color: Colors.blue.shade800,
            child:Column(
              children: [
                Image.asset('assets/images/emailnew.png',
                height:250,
                width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("Drop line about us",style: 
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("...",style: 
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                )
              ],
            )
          ),
          Container(
             height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*1,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(Icons.location_pin,color: Colors.red,
                  size: 40,),
                ),
                SizedBox(height: 30,),
                Text("264 Julian Moterway,Lalukhaet,Karachi"),

                  SizedBox(height: 30,),
                Text("Open Map",
                style: TextStyle(
                  color: Colors.blue.shade900,
                ),),
                 SizedBox(height: 30,),
                Icon(Icons.phone_android,
                 size: 30,
                color: Colors.red,),
                 SizedBox(height: 30,),
                
                Text("0900-78601",
                ),
                 SizedBox(height: 30,),
                 Icon(Icons.access_time,
                 size: 30,
                color: Colors.red,),
                 SizedBox(height: 30,), 

                Text("Monday-Friday",
                ),
                 SizedBox(height: 30,), 
                  Text("9:00-17:00",
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
