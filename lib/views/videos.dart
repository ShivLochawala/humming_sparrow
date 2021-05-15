import 'package:flutter/material.dart';
import 'package:humming_sparrow/datas/videos_details.dart';
import 'package:humming_sparrow/models/videos_model.dart';
import 'package:humming_sparrow/widgets/mywidgets.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatefulWidget {
  Videos({Key key}) : super(key: key);
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<VideosModel> videos = new List();
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  getVideosList(){
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal:24),
        itemCount: videos.length,
        shrinkWrap: true,
        itemBuilder: (context, index)=> VideosTile(
            imageUrl: videos[index].imageUrl,
            heading: videos[index].heading,
            newsDate: videos[index].newsDate,
          ) 
      ),
    );
  }

  @override
  void initState() {
    videos = getVideos();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();
  
    _controller.setLooping(true);
  
    super.initState();
  }
  
  @override
  void dispose() {
    _controller.dispose();
  
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Videos"),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("This is Heading of the realte new ws this is another", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 8.0,),
                    Text("This is Heading of the realte new ws this is another Heading of the", style: TextStyle(fontSize: 15.0, color: Colors.grey[500]),),
                    SizedBox(height: 8.0,),
                    SizedBox(
                      width: 400,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('Information', style: TextStyle(color: Colors.black, fontSize: 15.0),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white60,
                          ),
                        ),
                      ),
                    ),
                    getVideosList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // pause
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // play
              _controller.play();
            }
          });
        },
        // icon
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
class VideosTile extends StatelessWidget {
  final imageUrl;
  final heading;
  final newsDate;
  VideosTile({this.imageUrl,this.heading, this.newsDate});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imageUrl, width: 80.0, height: 80.0),
                ),
              ),
              SizedBox(width: 8.0,),
              Container(
                width: (MediaQuery.of(context).size.width - 156.0),
                child: Column(
                  children:[
                    Text(heading, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.date_range,color: Colors.grey[500],),
                        SizedBox(width: 5.0,),
                        Text(newsDate,style: TextStyle(fontSize: 15.0,  color: Colors.grey[400]),),
                        SizedBox(width: 5.0,),
                        Container(
                          color: Colors.orange[900],
                          padding: EdgeInsets.only(left:10.0,right:10.0),
                          child: Text('Info',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ]
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}