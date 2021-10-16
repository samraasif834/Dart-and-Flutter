import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 67,
                    height: 67,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/img2.jpg')))
                            

                            ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
