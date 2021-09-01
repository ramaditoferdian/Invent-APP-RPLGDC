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

  Widget buildTextField(String labelText, placeholder, bool isPasswordTextField) {

    return  Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObsecurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField ? 
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.remove_red_eye, color: Colors.grey,)
            ):null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            height: 1,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            color: Colors.grey
          ),
           floatingLabelBehavior: FloatingLabelBehavior.always,
           hintText: placeholder,
           hintStyle: GoogleFonts.poppins(
             fontSize: 15,
             fontWeight: FontWeight.w500,
             color: Colors.grey
           )
        ),
      ),
    );
  }
  
  Widget buildTextJadiSatu() {
    return Container(
      width: 350,
      child: Column(
        children: [
          buildTextField("Nama","Falia Aniya",false),
          buildTextField("Email","faliaan@gmail.com",false),
          buildTextField("NIM","1234567890",false),
          buildTextField("Jurusan","Sistem Informasi",false),
          buildTextField("Fakultas","Rekayasa Industri",false),
          buildTextField("Password","••••••",true)
        ],
      ),
    );
  }
  
  Widget buildSimpanButton() {
    return OutlinedButton(
    onPressed: () {
      print("Simpan di click");
    },
    child: Text(
      'Simpan',
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: 2
        )),
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 75),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: BorderSide(
        color: Colors.black)
      ),
    );
  }
  @override
  bool isObsecurePassword = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              silangButton(),
              userLogoCameraJadiSatu(),
              SizedBox(height: 30),
              buildTextJadiSatu(),
              SizedBox(height: 20),
              buildSimpanButton()
            ],
          ),
        ),
      ),
      
    );
  }
}