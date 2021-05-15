import 'package:flutter/material.dart';
import 'package:humming_sparrow/widgets/mywidgets.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _locationController = new TextEditingController();
  TextEditingController _pincodeController = new TextEditingController();
  TextEditingController _dobController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  TextEditingController _whatsappController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();

  final locationText = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
  final pincodeText = "xxxxxx";
  final dobText = "dd-mm-yy";
  final genderText = "Male";
  final whatsappText = "+91-xxxxxxxxxx";
  final emailText = "xxxxxxxxx@gmail.com";

  @override
  void initState() {
    super.initState();
    _locationController.text = locationText;
    _pincodeController.text = pincodeText;
    _dobController.text = dobText;
    _genderController.text = genderText;
    _whatsappController.text = whatsappText;
    _emailController.text = emailText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Profile"),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.grey[200]
          ),
          child: Column(
            children:[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:25),
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset("assets/images/profile_image.jpg", width: 100.0, height: 120.0),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.orange, spreadRadius: 3)
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text("Dinesh yaduvanshi", style: TextStyle(color: Colors.orange, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: (){
                    }, 
                    child: Text('Edit Profile', style: TextStyle(color: Colors.orange, fontSize: 12.0),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white70
                ),
                child: Column(
                  children:[
                    myInputBox("Location", _locationController),
                    myInputBox("Pincode", _pincodeController),
                    myInputBox("Date of Birth", _dobController),
                    myInputBox("Gender", _genderController),
                    myInputBox("Whatsapp", _whatsappController),
                    myInputBox("Email", _emailController),
                  ],
                  
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}