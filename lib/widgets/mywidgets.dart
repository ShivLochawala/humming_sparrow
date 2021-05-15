import 'package:flutter/material.dart';
import 'package:humming_sparrow/views/home.dart';
import 'package:humming_sparrow/views/profile.dart';
import 'package:humming_sparrow/views/videos.dart';

// myAppBar for all the Views
myAppBar(String title){
  return AppBar(
    title: Text(
      title, 
      style: TextStyle(
        //color: Color.fromRGBO(23, 50, 43, 0.4),
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25.0
      ),
    ),
  );
}

//MyDrawer for all the Views
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.only(top:50.0),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(23, 50, 43, 1.0)
            ),
          ),
          ListTile(
            title: Text('Home',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Home()
                )
              );
            },
          ),
          ListTile(
            title: Text('Videos',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
            leading: Icon(Icons.video_collection),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Videos()
                )
              );
            },
          ),
          ListTile(
            title: Text('Profile',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Profile()
                )
              );
            },
          ),
        ],
      ),
    );
  }
}

myInputBox(title,value){
  return Container(
    child: TextFormField(
      readOnly: true,
      controller: value,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
          color: Colors.grey[350],
        )
      ),
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      maxLines: 2,
    ),
  );
}