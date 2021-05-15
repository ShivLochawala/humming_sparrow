import 'package:humming_sparrow/models/videos_model.dart';

List<VideosModel> getVideos(){
  // ignore: deprecated_member_use
  List<VideosModel> videos = new List();
  
  VideosModel videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news6.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news5.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news4.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news3.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news2.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  videosModel = new VideosModel();
  videosModel.imageUrl = "assets/images/news1.jpg";
  videosModel.heading = "This is Heading of the realte new ws this is and go on";
  videosModel.newsDate = "03-03-2021";
  videos.add(videosModel);

  return videos;
}