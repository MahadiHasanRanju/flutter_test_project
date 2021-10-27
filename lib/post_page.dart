import 'package:StudioProjects/Profile_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Post_page extends StatefulWidget {
  const Post_page({Key key}) : super(key: key);

  @override
  _Post_pageState createState() => _Post_pageState();
}

class _Post_pageState extends State<Post_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(
            240, 240, 240, .6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,
          color: Color.fromRGBO(240, 240, 240, .6),
          ),
          iconSize: 25,
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ProfilePage(),
                ),
            );
          },
        ),
        title: Text(
          "Post Page",
          style: TextStyle(
            color: Color.fromRGBO(25, 25, 45, .6),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.refresh_outlined,
          color: Color.fromRGBO(25, 25, 45, .6),
          ),
            iconSize: 25,
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(),
            ),
            );
            },
          ),
        ],
      ),
    );
  }
}


