import 'package:StudioProjects/editpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 25,
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Container(
            height: 25,
            width: 105,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
              top: 15,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.lime.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.create_rounded,
                    size: 15,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
        title: Text(
          'Profile Page',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Profile image
              Container(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2.6,
                decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage(
                        "images/mhr.jpg"
                      ),
                      fit: BoxFit.cover,
                    ),
                  border: Border.all(
                   color: Color.fromRGBO(105, 107, 103, 1),
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(250, 251, 252, 1),
                ),
              ),
              //Address and Name container
              Container(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width/2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     // Name Text
                      Padding(
                     padding:const EdgeInsets.only(right: 20),
                        child: Text(
                          " Windows picture",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(34, 35, 40, 1),
                        ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //Address Text
                      Text(
                          'yyyyyyyy',
                      style:  TextStyle(
                          fontStyle:FontStyle.normal,fontSize: 16,fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(45, 46, 47, 1),
                      ),textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
