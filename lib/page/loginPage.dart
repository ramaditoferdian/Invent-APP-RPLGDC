import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/page/registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fieldTextEmailLog = TextEditingController();
  final fieldTextPasswordLog = TextEditingController();

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
    return Container(
      alignment: Alignment.centerRight,
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () => print('Forgot Password pressed!'),
        padding: EdgeInsets.only(right: 30),
        child: Text(
          'Forgot password?',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300
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
              onPressed: () => print('Login Pressed'),
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
                  color: Color.fromRGBO(0, 0, 0, 0.84),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  Widget buildAll() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
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
            SizedBox(
              height: 20,
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
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
          child: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFFFF9F69),
                    Color(0x79FFB183),
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
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
                        SizedBox(
                          height:
                              4.5 * (MediaQuery.of(context).size.height / 20),
                        ),
                        buildSignUpBtn()
                      ],
                    ),
                  ],
                ),
              )),
        ],
      )),
    ));
  }
}
