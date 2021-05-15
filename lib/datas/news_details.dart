import 'package:humming_sparrow/models/news.dart';

List<NewsModel> getNews(){
  // ignore: deprecated_member_use
  List<NewsModel> news = new List();
  
  NewsModel newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news6.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news5.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news4.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news3.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news2.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  newsModel = new NewsModel();
  newsModel.imageUrl = "assets/images/news1.jpg";
  newsModel.heading = "This is Heading of the realte new ws this is and go on";
  newsModel.description = "This is Heading of the realte new ws this is another Heading of the";
  newsModel.newsDate = "03-03-2021";
  news.add(newsModel);

  return news;
}