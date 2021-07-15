// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool validasiPassword = false;

  String nama = '';
  String email = '';
  String nip = '';
  String nim = '';
  String jurusan = '';
  String fakultas = '';
  String password = '';

  final _key = new GlobalKey<FormState>();

  /* 
    Boolean untuk mengetahui apakah saat ini berada pada
    Section Register sebagai DOSEN atau MAHASISWA 
  */
  bool isDosen = true;

  /* 
    Untuk mengontrol data inputan
  */

  final fieldTextNama = TextEditingController();
  final fieldTextEmail = TextEditingController();
  final fieldTextNIP = TextEditingController();
  final fieldTextNIM = TextEditingController();
  final fieldTextFakultas = TextEditingController();
  final fieldTextJurusan = TextEditingController();
  final fieldTextPassword = TextEditingController();

  checkInputan() {
    final form = _key.currentState;

    if (form!.validate() && fieldTextPassword.text.length >= 8) {
      form.save();
      print('Nama : $nama');
      print('Email : $email');
      print('NIP : $nip');
      print('NIM : $nim');
      print('Jurusan : $jurusan');
      print('Fakultas : $fakultas');
      print('Password : $password');
    } else {
      // form.reset();
      print(fieldTextPassword.text.length);
    }
  }

  /* 
    Prosedur untuk clear inputan jika pindah SECTION REGISTER 
    antara Dosen dan Mahasiswa
  */
  void clearInputan() {
    final form = _key.currentState;

    form!.reset();

    fieldTextNama.clear();
    fieldTextEmail.clear();
    fieldTextNIP.clear();
    fieldTextNIM.clear();
    fieldTextFakultas.clear();
    fieldTextJurusan.clear();
    fieldTextPassword.clear();

    nama = '';
    email = '';
    nip = '';
    nim = '';
    jurusan = '';
    fakultas = '';
    password = '';
  }

  // Kumpulan widget

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Nama Required';
              }
            },
            onSaved: (value) {
              nama = value.toString();
            },
            controller: fieldTextNama,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'Nama',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email Required';
              }
            },
            onSaved: (value) {
              email = value.toString();
            },
            controller: fieldTextEmail,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'Email',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNIP() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'NIP Required';
              }
            },
            onSaved: (value) {
              nip = value.toString();
            },
            controller: fieldTextNIP,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'NIP',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildNIM() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'NIM Required';
              }
            },
            onSaved: (value) {
              nim = value.toString();
            },
            controller: fieldTextNIM,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'NIM',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildJurusan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Jurusan Required';
              }
            },
            onSaved: (value) {
              jurusan = value.toString();
            },
            controller: fieldTextJurusan,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'Jurusan',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildFakultas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Fakultas Required';
              }
            },
            onSaved: (value) {
              fakultas = value.toString();
            },
            controller: fieldTextFakultas,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5),
              hintText: 'Fakultas',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 0),
              )
            ],
          ),
          height: 1.1 * (MediaQuery.of(context).size.height / 20),
          child: TextFormField(
            validator: (value) {
              // Melakukan cek apakah password lebih dari sama dengan 8 string
              if (value!.length < 8) {
                setState(() {
                  validasiPassword = true;
                  return null;
                });
              } else {
                setState(() {
                  validasiPassword = false;
                });
              }
            },
            onSaved: (value) {
              password = value.toString();
            },
            obscureText: true,
            controller: fieldTextPassword,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, bottom: 5, top: 8),
              hintText: 'Password',
              hintStyle: GoogleFonts.poppins(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: validasiPassword
                  ? Icon(
                      Icons.error,
                      color: Colors.black,
                    )
                  : null,
            ),
          ),
        )
      ],
    );
  }

  Widget buildSignUpButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 40, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 1.1 * (MediaQuery.of(context).size.height / 20),
            width: 3.5 * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFFEA340C),
                side: BorderSide(width: 3.0, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                print("Tombol Sign Up ditekan");
                checkInputan();
              },
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                    //color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: MediaQuery.of(context).size.height / 45,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer() {
    return Stack(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            // TAB DOSEN
            GestureDetector(
              onTap: () {
                setState(() {
                  print("Lagi dihalaman daftar sebagai Dosen");
                  isDosen = true;
                  clearInputan();
                });
              },
              child: Column(
                children: [
                  Text(
                    "Dosen",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 45,
                      fontWeight: isDosen ? FontWeight.w500 : FontWeight.w400,
                      color: isDosen ? Colors.black : Colors.black38,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.only(top: 3),
                    height: 2,
                    width: isDosen ? 50 : 0,
                    color: isDosen ? Colors.red : Colors.red.withAlpha(1),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            // TAB MAHASISWA
            GestureDetector(
              onTap: () {
                setState(() {
                  print('Lagi dihalaman daftar sebagai Mahasiswa');
                  isDosen = false;
                  clearInputan();
                });
              },
              child: Column(
                children: [
                  Text(
                    "Mahasiswa",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 45,
                      fontWeight: !isDosen ? FontWeight.w500 : FontWeight.w400,
                      color: !isDosen ? Colors.black : Colors.black38,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.only(top: 3),
                    height: 2,
                    width: !isDosen ? 90 : 0,
                    color: !isDosen ? Colors.red : Colors.red.withAlpha(1),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),

        // KOTAK PEMBUNGKUS NAMA, EMAIL, NIP, FAKULTAS, PASSWORD
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 40),
            height: isDosen
                ? MediaQuery.of(context).size.height * 0.59
                : MediaQuery.of(context).size.height * 0.67,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white10.withOpacity(0.3),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  buildName(),
                  buildEmail(),
                  if (isDosen) buildNIP(),
                  if (!isDosen) buildNIM(),
                  if (!isDosen) buildJurusan(),
                  buildFakultas(),
                  buildPassword(),
                  buildSignUpButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget backButton() {
    return Container(
      //padding: EdgeInsets.all(50),
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(
          Icons.chevron_left,
        ),
        iconSize: 50,
        color: Colors.black,
        onPressed: () {},
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
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 80),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Registrasi',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Column(
                            children: <Widget>[
                              buildContainer(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // TOMBOL BACK
              SafeArea(
                child: backButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
