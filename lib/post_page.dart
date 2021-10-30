
import 'package:StudioProjects/Profile_Page.dart';
import 'package:StudioProjects/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

List<Postmodel> postmodels =[
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.L College", address: "khulna", likes: 370, postImageURL: "images/posts/post_1.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "khulna T.T.C College", address: "Khulna ", likes: 650, postImageURL: "images/posts/post_2.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.N School & College", address: "Khulna ", likes: 145, postImageURL: "images/posts/post_3.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.L College", address: "khulna ", likes: 961, postImageURL: "images/posts/post_4.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "khulna T.T.C College", address: "Khulna ", likes: 215, postImageURL: "images/posts/post_5.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.N School & College", address: "Khulna ", likes: 451, postImageURL: "images/posts/post_6.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.L College", address: "khulna", likes: 150, postImageURL: "images/posts/post_7.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "khulna T.T.C College", address: "Khulna", likes: 180, postImageURL: "images/posts/post_8.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.N School & College", address: "Khulna", likes: 456, postImageURL: "images/posts/post_9.jpg.jpg"),
  Postmodel(username: "Mehedi Hasan Ranju", profileImageURL: "images/Mehedi.jpg.jpg", caption: "B.L College", address: "khulna", likes: 3456, postImageURL:"images/posts/post_10.jpg.jpg"),
];

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
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=>ProfilePage(),
            ),
            );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: ListView.builder(
          itemCount:  postmodels.length,
            itemBuilder: (BuildContext context,int index)
            {return Container(

            );
            },
        ),
      ),
    );
  }
}

