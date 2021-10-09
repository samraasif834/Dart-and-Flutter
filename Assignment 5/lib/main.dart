import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Login Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ))),
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 50,
            width: 10,
          ),
          const Text('Username',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          Container(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              )),
          const Text("Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          Container(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 25),
              )),
        ],
      ),
    ));
  }
}
