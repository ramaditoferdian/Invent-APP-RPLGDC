import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class EditUser extends StatefulWidget {
  const EditUser({ Key? key }) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {

  Widget silangButton() {
    return Container(
      //padding: EdgeInsets.all(50),
      alignment: Alignment.topLeft, // komen
      child: IconButton(
        icon: Icon(
          Icons.clear,
        ),
        iconSize: 50,
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
          print('Back Button');
        },
      ),
    );
  }

  Widget iconUser() {
    double _size = 100;
    return GestureDetector(
      onTap: () {
        print("User");
      },
      child: Container(
        height: _size,
        decoration: new BoxDecoration(
          // color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black
          )
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.black,
                size: _size,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconCamera(){
    return GestureDetector(
      onTap: () {
        print('camera infront of user');
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black)
            ),
        margin: EdgeInsets.fromLTRB(225, 70, 0, 0),
        // alignment: Alignment.center,
        child: Icon(
          Icons.camera_alt,
          size: 20,
        )
      )
    );
  }
  
  Widget userLogoCameraJadiSatu() {
    return Stack(
      children: [
        iconUser(),
        iconCamera()
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              silangButton(),
              userLogoCameraJadiSatu(),
              Container(
                color: Colors.black,
                width: 350,
                child: Text('data'),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}