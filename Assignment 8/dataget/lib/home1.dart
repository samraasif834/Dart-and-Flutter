import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  TextEditingController txt = TextEditingController();
  var taskname = ['Work', "School", "Goals", "Homework", 'grocery'];
  var lst = [];
  var gettext = '';

  Add() {
    setState(() {
      lst.add(gettext);
      print(lst);
    });
  }

  Update() {
    setState(() {
      lst.replaceRange(lst.length - 1, lst.length, [gettext]);
    });
  }

  Delete() {
    setState(() {
      lst.remove(gettext);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade600,
          leading: Icon(
            Icons.checklist_rounded,
            color: Colors.white,
          ),
          title: Text("All Lists"),
          actions: [Icon(Icons.more_vert)],
        ),
        body: Stack(
          children: [
            Column(children: [
              TextField(
                  controller: txt,
                  onChanged: (value) {
                    gettext = value;
                  }),
            ]),
            Positioned(
              left: 90,
              top: 50,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Add();
                        txt.clear();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.pink.shade500,
                      ),
                      child: Text(
                        "Add",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Update();
                        txt.clear();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.pink.shade500,
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Delete();
                        txt.clear();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.pink.shade500,
                      ),
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Text(lst[index]);
                })
          ],
        ));
  }
}
