import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage('assets/images/img1.jpg')),
                ),
              ),
              title: Text(
                'Hello',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "karachi",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img2.jpg'))),
            ),
            ListTile(
              leading: Wrap(
                spacing: 10,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                  Icon(
                    Icons.comment_sharp,
                    color: Colors.white,
                    size: 28,
                  ),
                  Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
                size: 33,
              ),
            ),
            Row(
              children: [
                Padding(padding:const EdgeInsets.only(left: 18.0),
                child:Text("10 likes",style: TextStyle(
                  fontWeight: FontWeight.w700),),
                )
                ]),
            Row(
              children: [
                Padding(padding:const EdgeInsets.only(left: 18.0),
                child:Text("hello",style: TextStyle(
                  fontWeight: FontWeight.w700),),
                )
                ]),    


          ],
        );
      },
    );
  }
}
