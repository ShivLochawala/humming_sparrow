import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humming_sparrow/datas/news_details.dart';
import 'package:humming_sparrow/models/news.dart';
import 'package:humming_sparrow/widgets/mywidgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<NewsModel> news = new List();

  getNewsList(){
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal:24),
        itemCount: news.length,
        shrinkWrap: true,
        itemBuilder: (context, index)=> NewsTile(
            imageUrl: news[index].imageUrl,
            heading: news[index].heading,
            description: news[index].description,
            newsDate: news[index].newsDate,
          ) 
      ),
    );
  }

  @override
  void initState() {
    news = getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Home"),
      drawer: MyDrawer(),
      body: getNewsList(),
    );
  }
}
class NewsTile extends StatelessWidget {
  final imageUrl;
  final heading;
  final description;
  final newsDate;
  NewsTile({this.imageUrl,this.heading, this.description, this.newsDate});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(imageUrl, width: 100.0, height: 120.0),
                ),
              ),
              SizedBox(width: 8.0,),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 156.0),
                child: Container(
                  child: Column(
                    children:[
                      Text(heading, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                      Text(description, style: TextStyle(fontSize: 12.0, color: Colors.grey[500]),),
                      Row(
                        children: [
                          Icon(Icons.date_range,color: Colors.grey[500],),
                          SizedBox(width: 5.0,),
                          Text(newsDate,style: TextStyle(fontSize: 15.0,  color: Colors.grey[400]),),
                          SizedBox(width: 5.0,),
                          Container(
                            color: Colors.orange[900],
                            padding: EdgeInsets.only(left:10.0,right:10.0),
                            child: Text('Sports',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(Icons.save_alt ,color: Colors.grey[500],),
                        ],
                      )
                    ]
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}