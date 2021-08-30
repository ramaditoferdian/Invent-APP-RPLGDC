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

  Widget userLogo() {
    double _size = 100;
    return GestureDetector(
      onTap: () {
        print("akun");
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

  // Widget userCamera(){
  //   return 
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  userLogo(),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.camera
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}