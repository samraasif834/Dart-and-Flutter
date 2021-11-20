import 'package:flutter/material.dart';
import 'package:flutterminihackton/about.dart';
import 'package:flutterminihackton/cart.dart';
import 'package:flutterminihackton/favourite.dart';
import 'package:flutterminihackton/homepage.dart';
import 'package:flutterminihackton/homepage.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  TextEditingController txt = TextEditingController();

  var gettext = '';
  var password = "123456";
  // bool obscureText = true;

  // Password() {
  //   setState(() {
  //     obscureText = false;
  //   });
  // }

  

  showAlertDialog(BuildContext context) {
    Widget okbutton = ElevatedButton(onPressed: () {}, child: Text("OK"));
    AlertDialog alert = AlertDialog(
      title: Text("Wrong Paassword"),
      content: Text("Please try again later"),
      actions: [
        okbutton,
      ],
    );
  }

  validation() {
    setState(() {
      if (gettext == "123456") {
        print(Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => About(),
          ),
        ));
      } else {
        print(showAlertDialog(context));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.red.shade900),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                    height: 350,
                    child:
                        Image.asset('assets/images/output-onlinepngtools.png')),
                Container(
                  height: 70,
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 250,
                  child: TextField(
                    controller: txt,
                    obscureText: true,
                    onChanged: (value) {
                      gettext = value;
                    },
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 130,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            width: 3,
                            color: Colors.black,
                          ),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: () {
                        if (gettext == "123456") {
                          print(Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Homepage(),
                            ),
                          ));
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Wrong Paassword"),
                                  content: Text("Please try again later"),
                                  actions: [
                                    Text("Ok"),
                                  ],
                                );
                              });
                        }
                        // validation();
                        txt.clear();
                      },
                      icon: Icon(
                        Icons.login_outlined,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Not have an account? Register.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
