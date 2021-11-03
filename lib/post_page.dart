
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
          padding: EdgeInsets.symmetric(
              horizontal: 10,vertical: 10),
          itemCount:  postmodels.length,
            itemBuilder: (BuildContext context,int index) {
            return Container(
              height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  //Header Row profile image

                  Row(
              children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage(
                          "${postmodels[index].profileImageURL}"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: RichText(
                          textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: "${postmodels[index].username}\n",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, .6),
                        ),
                        children: [
                          TextSpan(
                            text: "${DateTime.now().day}/${DateTime.now().year}/${DateTime.now().hour}",
                        style:TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 0, 0, .6),
                        ),
                          ),
                        ],
                        ),
                        ),
                      ),
                    ),
                  ],
                  ),

                  //Address Row and Caption taking column
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  child:Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width/9,
            child: Column(
            children: [
              //Address row

            Container(
            height: MediaQuery.of(context).size.height/30,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
              Icon(
                Icons.location_city_outlined,
            size: 15,
            color: Color.fromRGBO(0, 0, 0, .6),
            ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 10) ,
                  child: Text(
                      "${postmodels[index].address}",
                  style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, .6),
                  ),
                  textAlign: TextAlign.justify),
                ),
            ],
            ),
            ),

//Caption Container
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Text("${postmodels[index].caption}",
                  style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, .6),
                  ),
                ),
              )

            ),
            ],
                  ),
                  ),
                  ),

                  //post image Container

                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 5),
                  child:Container(
                    height: MediaQuery.of(context).size.height/4,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${postmodels[index].profileImageURL}"),
                        fit: BoxFit.fill
                        ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  ),

                  //share, comments and Likes button padding
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //likes button container
                    Container(
                      height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.width/3.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(0, 0, 0, .6),
                      width: 3,
                      style: BorderStyle.solid,
                      ),
                    ),
                      child: InkWell(
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            size: 12,
                          ),
                          Text("${postmodels[index].likes} likes",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          ),
                        ],
                        ),
                      ),
                    ),
                  ],
                  ),
                  ),
                ]
              ),
            );
            },
        ),
      ),
    );
  }

}

