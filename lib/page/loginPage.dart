import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/page/halamanUtama.dart';
import 'package:inventory_app/page/registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fieldTextEmailLog = TextEditingController();
  final fieldTextPasswordLog = TextEditingController();

  bool salahPassword = true;

  Widget buildEmail() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(33),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 1.5 * (MediaQuery.of(context).size.height / 20),
        width: 7.5 * (MediaQuery.of(context).size.width / 10),
        child: TextField(
          controller: fieldTextEmailLog,
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.poppins(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              hintText: 'Email',
              hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 15)),
        ),
      )
    ]);
  }

  Widget buildPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(33),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 1.5 * (MediaQuery.of(context).size.height / 20),
        width: 7.5 * (MediaQuery.of(context).size.width / 10),
        child: TextField(
          controller: fieldTextPasswordLog,
          obscureText: true,
          style: GoogleFonts.poppins(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Password',
              hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 15)),
        ),
      )
    ]);
  }

  Widget buildForgotPasswordBtn() {
    return GestureDetector(
      onTap: () => print('Forgot Password pressed!'),
      child: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 30, top: 15, bottom: 20),
        child: Text(
          'Forgot password?',
          style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400,
            // fontWeight: FontWeight.
          ),
        ),
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 40, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 1.2 * (MediaQuery.of(context).size.height / 20),
            width: 5 * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFFEA340C),
                side: BorderSide(width: 2, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print('Login Pressed');

                if (salahPassword == true) {
                  showDialog(context: context, builder: (_) => ImageDialog());
                  print('Salah Password');
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanUtama()),
                  );
                  print('Berhasil Login');
                }
              },
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  //color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height / 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        );
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an account ? ',
              style: GoogleFonts.poppins(
                  color: Color.fromRGBO(0, 0, 0, 0.84),
                  fontSize: 15,
                  fontWeight: FontWeight.normal)),
          TextSpan(
              text: 'Sign Up',
              style: GoogleFonts.poppins(
                  color: Color.fromRGBO(132, 40, 0, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  Widget buildLoginAsGuest() {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 40, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 1.2 * (MediaQuery.of(context).size.height / 20),
            width: 5 * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color.fromRGBO(255, 179, 135, 1),
                side: BorderSide(
                    width: 2, color: Color.fromRGBO(255, 179, 135, 1)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print('Login Pressed');

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanUtama()),
                );
              },
              child: Text(
                'Login as Guest',
                style: GoogleFonts.poppins(
                    color: Colors.black.withOpacity(0.47),
                    letterSpacing: 1.5,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAll() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.385,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white10.withOpacity(0.3),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildEmail(),
            Divider(
              color: Colors.black.withOpacity(0),
            ),
            buildPassword(),
            buildForgotPasswordBtn(),
            buildLoginBtn(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFF9F69),
                Color(0x79FFB183),
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: <Widget>[
                    buildAll(),
                    Divider(
                      color: Colors.black.withOpacity(0),
                      height: 50,
                    ),
                    buildLoginAsGuest(),
                    Divider(
                      color: Colors.black.withOpacity(0),
                      height: 70,
                    ),
                    buildSignUpBtn()
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Image.asset(
        'assets/AttentionLogin.png',
      ),
    );
  }
}
