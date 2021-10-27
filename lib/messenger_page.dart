import 'package:StudioProjects/Profile_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Messenger_page extends StatefulWidget {
  const Messenger_page({Key key}) : super(key: key);

  @override
  _Messenger_pageState createState() => _Messenger_pageState();
}

class _Messenger_pageState extends State<Messenger_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Color.fromRGBO(240, 240, 240, .6),
  leading:IconButton(
    icon: Icon(Icons.arrow_back_ios_outlined,
      color: Color.fromRGBO(25, 25, 45, .6),
  ),
      iconSize: 25,
      onPressed: (){
      Navigator.push(
          context, MaterialPageRoute(
        builder: (context)=>ProfilePage(),
      ),
      );
      },
  ) ,
  title:Text(
    "Messenger Page",
    style: TextStyle(
        fontSize: 25,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(25, 25, 35, .6),
    ),
  ) ,
  centerTitle: true ,
  actions: [
    IconButton(
      icon: Icon(
        Icons.refresh_outlined,
      color: Color.fromRGBO(25, 25, 35, .6),
      ),
      iconSize: 25,
      onPressed: (){
        Navigator.push(
            context, MaterialPageRoute(
          builder: (context)=>Messenger_page(),
        ),
        );
      },
    ),
  ],
),
      body: Center(
        child: Text("Messenger Page"),
      ),
    );
  }
}
