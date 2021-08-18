// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/page/detail/detailBarang.dart';
import 'package:inventory_app/page/detail/proses.dart';

import 'detail/dataPinjam.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

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

// ========================================================================== //

  final fieldTextSearch = TextEditingController();

  bool isClicked = true;
  bool menu1 = true;
  bool menu2 = false;
  bool menu3 = false;
  bool menu4 = false;

  Widget userAccount() {
    double _size = 45;

    return GestureDetector(
      onTap: () {
        print("akun");
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
            contentPadding: EdgeInsets.only(left: 20, bottom: 8),
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
                              Text('Kategori',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // child: ListView.separated(
                  //   shrinkWrap: true,
                  //   separatorBuilder: (BuildContext context, int index) =>
                  //       Divider(),
                  //   itemCount: prosesBarang.length,
                  //   itemBuilder: (context, int index) {
                  //     return menuCard_prosesBarang(
                  //       prosesBarang[index].name,
                  //       prosesBarang[index].request_date,
                  //       prosesBarang[index].borrower,
                  //       prosesBarang[index].image,
                  //     );
                  //   },
                  // ),
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
              // TOMBOL BACK
            ],
          ),
        ),
        floatingActionButton: Visibility(
          // Tamplikan Ketika berada pada Menu Data Barang
          visible: menu1,
          child: Container(
            height: 55,
            child: OutlinedButton(
              onPressed: () {
                print("Add Barang");
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.white,
                  side: BorderSide(width: 2.0, color: Colors.black),
                  shape: CircleBorder()),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
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
