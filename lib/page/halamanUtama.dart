// ignore_for_file: non_constant_identifier_names, deprecated_member_use, camel_case_types

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/page/detail/detailBarang.dart';
import 'package:inventory_app/page/detail/detailProsesBarang.dart';
import 'package:inventory_app/page/rekapData.dart';
import 'package:inventory_app/page/user/userPage.dart';

import 'detail/detailBarangDipinjam.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

bool isClicked = true;
bool menu1 = true;
bool menu2 = false;
bool menu3 = false;
bool menu4 = false;

class _HalamanUtamaState extends State<HalamanUtama> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  void scrollUp() {
    final double start = controller.position.minScrollExtent;

    controller.animateTo(start,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void scrollDown() {
    final double end = controller.position.maxScrollExtent;

    controller.animateTo(end,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void showDialogFaB() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.25),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return FaB();
      },
      transitionBuilder: (_, anim, __, child) {
        return BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: 1 * anim.value, sigmaY: 1 * anim.value),
          child: SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
            child: child,
          ),
        );
      },
    );
  }

  void showDialogPopFilter() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.25),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return PopFilter();
      },
      transitionBuilder: (_, anim, __, child) {
        return BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: 1 * anim.value, sigmaY: 1 * anim.value),
          child: SlideTransition(
            position: Tween(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ).animate(anim),
            child: child,
          ),
        );
      },
    );
  }

  // DATA DUMMY

  List<Barang> dataBarang = [
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronikkkkkkkkkkk',
      amount: '1000000000',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Keyboard Razer xxxxxxxx sad a as ',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
      image: 'images/mouse.png',
    ),
  ];

  List<Item> barangDipinjam = [
    Item(
      name: 'Mouse Logitech LM145 dasd asd asd as da',
      unit_code: 'LM145-1',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Item(
      name: 'Mouse Logitech LM145 dasd asd asd as da',
      unit_code: 'LM145-1',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
  ];

  List<Pending> prosesBarang = [
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
    Pending(
      name: 'Mouse Logitech LM145',
      request_date: '12 Mar 2021',
      borrower: 'Raihan',
      image: 'images/mouse.png',
    ),
  ];

  List<Borrower_On_RekapBarang> peminjamRekapBarang = [
    Borrower_On_RekapBarang(
      borrower: 'Raihan',
    ),
    Borrower_On_RekapBarang(
      borrower: 'Aurelia',
    ),
    Borrower_On_RekapBarang(
      borrower: 'Bambang',
    ),
  ];

// ========================================================================== //

  final fieldTextSearch = TextEditingController();

  Widget forwardButton() {
    return Container(
      alignment: Alignment.topLeft, // komen
      child: RotatedBox(
        quarterTurns: 2,
        child: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            Icons.chevron_left,
          ),
          iconSize: 30,
          color: Colors.black,
          onPressed: () {
            // Navigator.pop(context);
            print('forward button');
          },
        ),
      ),
    );
  }

  Widget userAccount() {
    double _size = 45;

    return GestureDetector(
      onTap: () {
        print("akun");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserPage()),
        );
      },
      child: Container(
        height: _size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
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

  Widget iconSort() {
    double _size = 30;

    return GestureDetector(
      onTap: () {
        showDialogPopFilter();
        print("sort");
      },
      child: Container(
        padding: EdgeInsets.all(5),
        height: _size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(135),
          child: Icon(
            Icons.sort,
            size: _size - 10,
          ),
        ),
      ),
    );
  }

  Widget buildSearch() {
    return Container(
      //margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
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
      height: (MediaQuery.of(context).size.height / 30),
      width: (MediaQuery.of(context).size.width * 0.78),
      child: TextFormField(
        controller: fieldTextSearch,
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.black87,
        ),
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 20, bottom: 10),
            hintText: 'search...',
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: MediaQuery.of(context).size.height / 60,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                print("cari");
              },
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 20,
              ),
            )),
      ),
    );
  }

// NAVIGATION
  Widget dataBarangHead() {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("Menu Data Barang");
          menu1 = isClicked;
          menu2 = !isClicked;
          menu3 = !isClicked;
          menu4 = !isClicked;
          // isDosen = true;
          // clearInputan();
          scrollUp();
        });
      },
      child: Column(
        children: [
          Text(
            "Data Barang",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 60,
              fontWeight: menu1 ? FontWeight.w500 : FontWeight.w400,
              color: menu1 ? Colors.black : Colors.black38,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 3),
            height: 4,
            width: menu1 ? 50 : 0,
            decoration: new BoxDecoration(
              color: menu1 ? Colors.black : Colors.red.withAlpha(1),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }

  Widget prosesBarangHead() {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("Menu Proses Barang");
          menu1 = !isClicked;
          menu2 = isClicked;
          menu3 = !isClicked;
          menu4 = !isClicked;
          // isDosen = true;
          // clearInputan();
        });
      },
      child: Column(
        children: [
          Text(
            "Proses Barang",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 60,
              fontWeight: menu2 ? FontWeight.w500 : FontWeight.w400,
              color: menu2 ? Colors.black : Colors.black38,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 3),
            height: 4,
            width: menu2 ? 50 : 0,
            decoration: new BoxDecoration(
              color: menu2 ? Colors.black : Colors.red.withAlpha(1),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }

  Widget barangDipinjamHead() {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("Menu Barang Dipinjam");
          menu1 = !isClicked;
          menu2 = !isClicked;
          menu3 = isClicked;
          menu4 = !isClicked;
          // isDosen = true;
          // clearInputan();
        });
      },
      child: Column(
        children: [
          Text(
            "Barang Dipinjam",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 60,
              fontWeight: menu3 ? FontWeight.w500 : FontWeight.w400,
              color: menu3 ? Colors.black : Colors.black38,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 3),
            height: 4,
            width: menu3 ? 50 : 0,
            decoration: new BoxDecoration(
              color: menu3 ? Colors.black : Colors.red.withAlpha(1),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }

  Widget rekapBarangHead() {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("Menu Rekap Barang");
          menu1 = !isClicked;
          menu2 = !isClicked;
          menu3 = !isClicked;
          menu4 = isClicked;
          // isDosen = true;
          // clearInputan();
          scrollDown();
        });
      },
      child: Column(
        children: [
          Text(
            "Rekap Barang",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 60,
              fontWeight: menu4 ? FontWeight.w500 : FontWeight.w400,
              color: menu4 ? Colors.black : Colors.black38,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(top: 3),
            height: 4,
            width: menu4 ? 50 : 0,
            decoration: new BoxDecoration(
              color: menu4 ? Colors.black : Colors.red.withAlpha(1),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }

// MENU CARD
  Widget menuCard_dataBarang(String nama, kategori, banyak, image) {
    return GestureDetector(
      onTap: () {
        print('Menu Card Detail Barang');
        //print(MediaQuery.of(context).size.height * 0.15);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailBarang()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15), //top: 10, bottom: 10),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  // 'images/mouse.png',
                  image,

                  width: 80,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 230,
                      padding: EdgeInsets.only(bottom: 10),
                      //color: Colors.amber,
                      child: Text(
                        // 'Mouse Logitech LM145',
                        nama,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(children: <Widget>[
                            Text('Kuantitas',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0x8C000000))),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              // color: Colors.amber,
                              width: 95,
                              alignment: Alignment.center,
                              child: Text(
                                // '10 Unit',
                                '$banyak Unit',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          width: 2,
                          height: 45,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Kategori',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0x8C000000),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  // color: kategori == 'Good'
                                  //     ? Colors.amber
                                  //     : Colors.redAccent,
                                  // border: Border.all(
                                  //   color: Colors.amber,
                                  //   width: 2,
                                  // ),
                                ),
                                child: Container(
                                  width: 95,
                                  // color: Colors.amber,
                                  alignment: Alignment.center,
                                  child: Text(
                                    kategori,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              //margin: EdgeInsets.fromLTRB(15, 0, 0, 75),
              child: GestureDetector(
                onTap: () {
                  print('Triple Dots');
                },
                child: Icon(Icons.more_vert),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget menuCard_barangDipinjam(String nama, kode_unit, peminjam, image) {
    return GestureDetector(
      onTap: () {
        print('Menu Card Barang Dipinjam');
        //print(MediaQuery.of(context).size.height * 0.15);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailBarangDipinjam()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15), //top: 10, bottom: 10),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  // 'images/mouse.png',
                  image,

                  width: 80,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 230,
                      padding: EdgeInsets.only(bottom: 10),
                      //color: Colors.amber,
                      child: Text(
                        // 'Mouse Logitech LM145',
                        nama,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: GoogleFonts.roboto(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(children: <Widget>[
                            Text('Kode Unit',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0x8C000000))),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 95,
                              // color: Colors.amber,
                              alignment: Alignment.center,
                              child: Text(
                                kode_unit,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          width: 2,
                          height: 45,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text('Peminjam',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0x8C000000))),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  // color: Colors.amber,
                                  width: 95,
                                  child: Text(
                                    peminjam,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCard_prosesBarang(
      String nama, tanggal_pengajuan, peminjam, image) {
    return GestureDetector(
      onTap: () {
        print('Menu Card Proses Barang');
        //print(MediaQuery.of(context).size.height * 0.15);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailProsesBarang()),
        );
      },
      child: Container(
        height: 1000,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 5), //top: 10, bottom: 10),
        // height: MediaQuery.of(context).size.height * 0.15,
        // width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // color: Colors.orange,
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    // 'images/mouse.png',
                    image,

                    // width: 40,
                    // height: 50,

                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    tanggal_pengajuan,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  padding: EdgeInsets.only(bottom: 10),
                  //color: Colors.amber,
                  child: Text(
                    // 'Mouse Logitech LM145',
                    nama,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('Pengajuan Barang',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0x8C000000))),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              height: 2,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Container(
                    // color: Colors.amber,
                    width: 150,

                    child: Text(
                      peminjam,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCard_rekapBarang(String number, peminjam) {
    return GestureDetector(
      onTap: () {
        print('Menu Card Rekap Barang');

        //print(MediaQuery.of(context).size.height * 0.15);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => DetailBarangDipinjam()),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RekapData()),
        );
      },
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15), //top: 10, bottom: 10),
        // height: MediaQuery.of(context).size.height * 0.15,
        // width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 45,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10),
                    ),
                    color: Colors.amber,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    // color: Colors.amber,
                    width: 95,
                    child: Text(
                      number,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  // alignment: Alignment.center,
                  // color: Colors.amber,
                  width: 95,
                  child: Text(
                    peminjam,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            forwardButton()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFF9559),
                      Color(0xFFFF9559),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Inventory Lab',
                          style: GoogleFonts.sortsMillGoudy(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        userAccount()
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildSearch(),
                        iconSort(),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          dataBarangHead(),
                          SizedBox(
                            width: 20,
                          ),
                          prosesBarangHead(),
                          SizedBox(
                            width: 20,
                          ),
                          barangDipinjamHead(),
                          SizedBox(
                            width: 20,
                          ),
                          rekapBarangHead(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: menu1,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: dataBarang.length,
                    itemBuilder: (context, int index) {
                      return menuCard_dataBarang(
                        dataBarang[index].name,
                        dataBarang[index].condition,
                        dataBarang[index].amount,
                        dataBarang[index].image,
                      );
                    },
                  ),
                ),
              ),
              Visibility(
                visible: menu2,
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.5,
                  // alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4,
                      left: 15,
                      right: 15),

                  child: GridView.count(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: (1 / 1),
                    children: List.generate(prosesBarang.length, (index) {
                      return menuCard_prosesBarang(
                        prosesBarang[index].name,
                        prosesBarang[index].request_date,
                        prosesBarang[index].borrower,
                        prosesBarang[index].image,
                      );
                    }),
                  ),
                ),
              ),
              Visibility(
                visible: menu3,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: barangDipinjam.length,
                    itemBuilder: (context, int index) {
                      return menuCard_barangDipinjam(
                        barangDipinjam[index].name,
                        barangDipinjam[index].unit_code,
                        barangDipinjam[index].borrower,
                        barangDipinjam[index].image,
                      );
                    },
                  ),
                ),
              ),
              Visibility(
                visible: menu4,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: peminjamRekapBarang.length,
                    itemBuilder: (context, int index) {
                      return menuCard_rekapBarang(
                        (index + 1).toString(),
                        peminjamRekapBarang[index].borrower,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(1, 3), // changes position of shadow
              ),
            ],
          ),
          height: 55,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                print("FAB");
                showDialogFaB();
              });
            },
            style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.white,
                side: BorderSide(width: 1.5, color: Colors.black),
                shape: CircleBorder()),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ));
  }
}

class Barang {
  late String name, condition, amount, image;

  Barang({
    required this.name,
    required this.condition,
    required this.amount,
    required this.image,
  });
}

class Item {
  late String name, unit_code, borrower, image;

  Item({
    required this.name,
    required this.unit_code,
    required this.borrower,
    required this.image,
  });
}

class Pending {
  late String name, request_date, borrower, image;

  Pending({
    required this.name,
    required this.request_date,
    required this.borrower,
    required this.image,
  });
}

class Borrower_On_RekapBarang {
  late String borrower;

  Borrower_On_RekapBarang({
    required this.borrower,
  });
}

class FaB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
      // FLOATING ACTION BUTTON dalam bentuk RaisedButton
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 220,
            height: 50,
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                print("Managemen Barang");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Material(
                      color: Color.fromRGBO(227, 227, 227, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        child: Image.asset("assets/fab/management_barang.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Managemen Barang",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0),
            height: 25,
          ),
          Container(
            width: 190,
            height: 50,
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                print("Tambah Barang");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    child: Material(
                      color: Color.fromRGBO(227, 227, 227, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        child: Image.asset("assets/fab/tambah_barang.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Tambah Barang",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black.withOpacity(0),
            height: 25,
          ),
          Container(
            height: 55,
            child: OutlinedButton(
              onPressed: () {
                print("Close");
                Navigator.pop(context, true);
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.white,
                  side: BorderSide(width: 1, color: Colors.black),
                  shape: CircleBorder()),
              child: Icon(
                Icons.close,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopFilter extends StatefulWidget {
  @override
  State<PopFilter> createState() => _PopFilterState();
}

class _PopFilterState extends State<PopFilter> {
  List<Kategori> category = [
    Kategori(
      title: 'Elektorik',
      isChecked: false,
    ),
    Kategori(
      title: 'Buku',
      isChecked: false,
    ),
    Kategori(
      title: 'Prasarana',
      isChecked: false,
    ),
  ];

  List<Kondisi> condition = [
    Kondisi(
      title: 'Good',
      isChecked: false,
    ),
    Kondisi(
      title: 'Poor',
      isChecked: false,
    ),
    Kondisi(
      title: 'Semua Kondisi',
      isChecked: false,
    ),
  ];

  List<TahunProduk> productYear = [
    TahunProduk(
      title: '2018',
      isChecked: false,
    ),
    TahunProduk(
      title: '2019',
      isChecked: false,
    ),
    TahunProduk(
      title: '2020',
      isChecked: false,
    ),
    TahunProduk(
      title: '2021',
      isChecked: false,
    ),
  ];

  Widget ListKategori(String title, bool diPilih) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            bottom: 5,
            left: 20,
          ),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
        Checkbox(
          value: diPilih,
          onChanged: (bool? newValue) {
            setState(() {
              print(diPilih);
              diPilih = newValue!;
              print(diPilih);
            });
          },
          activeColor: Colors.white,
          checkColor: Colors.blue,
        ),
      ],
    );
  }

  Widget buildButtonTerapkan() {
    return InkWell(
      onTap: () {
        Navigator.pop(context, true);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(color: Colors.white),
          color: Color(0xFFEA340C),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        child: Text(
          'Terapkan',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildButtonBersihkan() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 19,
        ),
        child: Text(
          'Bersihkan',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(150, 100, 0, 150),
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Filter :',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                color: Color.fromRGBO(152, 152, 152, 0.11),
                width: (MediaQuery.of(context).size.width * 1),
                child: Text(
                  'Kategori',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, right: 40, bottom: 5),
                // color: Colors.amber,
                // alignment: Alignment.center,
                child: ListView.separated(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  separatorBuilder: (
                    BuildContext context,
                    int index,
                  ) =>
                      Divider(
                    height: 0,
                  ),
                  itemCount: category.length,
                  itemBuilder: (context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                            left: 25,
                          ),
                          child: Text(
                            category[index].title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            // color: Colors.amber,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          height: 18,
                          width: 18,
                          // color: Colors.amber,
                          child: Transform.scale(
                            scale: 0.7,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: category[index].isChecked,
                                onChanged: (bool? val) {
                                  setState(() {
                                    category[index].isChecked = val!;
                                  });
                                },
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                color: Color.fromRGBO(152, 152, 152, 0.11),
                width: (MediaQuery.of(context).size.width * 1),
                child: Text(
                  'Kondisi',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, right: 40, bottom: 5),
                // color: Colors.amber,
                // alignment: Alignment.center,
                child: ListView.separated(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  separatorBuilder: (
                    BuildContext context,
                    int index,
                  ) =>
                      Divider(
                    height: 0,
                  ),
                  itemCount: condition.length,
                  itemBuilder: (context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                            left: 25,
                          ),
                          child: Text(
                            condition[index].title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            // color: Colors.amber,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          height: 18,
                          width: 18,
                          // color: Colors.amber,
                          child: Transform.scale(
                            scale: 0.7,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: condition[index].isChecked,
                                onChanged: (bool? val) {
                                  setState(() {
                                    // category[index].isChecked = val!;
                                    if (index == 0) {
                                      condition[0].isChecked = val!;
                                      condition[1].isChecked = false;
                                      condition[2].isChecked = false;
                                      print('0');
                                    } else if (index == 1) {
                                      condition[0].isChecked = false;
                                      condition[1].isChecked = val!;
                                      condition[2].isChecked = false;
                                      print('1');
                                    } else if (index == 2) {
                                      condition[0].isChecked = false;
                                      condition[1].isChecked = false;
                                      condition[2].isChecked = val!;
                                      print('2');
                                    }
                                  });
                                },
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                color: Color.fromRGBO(152, 152, 152, 0.11),
                width: (MediaQuery.of(context).size.width * 1),
                child: Text(
                  'Tahun Produk',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, right: 40, bottom: 5),
                // color: Colors.amber,
                // alignment: Alignment.center,
                child: ListView.separated(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  separatorBuilder: (
                    BuildContext context,
                    int index,
                  ) =>
                      Divider(
                    height: 0,
                  ),
                  itemCount: productYear.length,
                  itemBuilder: (context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 10,
                            left: 25,
                          ),
                          child: Text(
                            productYear[index].title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            // color: Colors.amber,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          height: 18,
                          width: 18,
                          // color: Colors.amber,
                          child: Transform.scale(
                            scale: 0.7,
                            child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: productYear[index].isChecked,
                                onChanged: (bool? val) {
                                  setState(() {
                                    productYear[index].isChecked = val!;
                                  });
                                },
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButtonBersihkan(),
                  buildButtonTerapkan(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Kategori {
  late String title;
  late bool isChecked;

  Kategori({
    required this.title,
    required this.isChecked,
  });
}

class Kondisi {
  late String title;
  late bool isChecked;

  Kondisi({
    required this.title,
    required this.isChecked,
  });
}

class TahunProduk {
  late String title;
  late bool isChecked;

  TahunProduk({
    required this.title,
    required this.isChecked,
  });
}
