// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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

  List<Barang> dataBarang = [
    Barang(
      name: 'Mouse Logitech LM145',
      condition: 'Elektronik',
      amount: '10',
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

  final fieldTextSearch = TextEditingController();

  bool isClicked = true;
  bool menu1 = true;
  bool menu2 = false;
  bool menu3 = false;
  bool menu4 = false;

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
                              alignment: Alignment.center,
                              child: Text(
                                // '10 Unit',
                                '$banyak Unit',
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
                                child: Text(
                                  kategori,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
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
              )
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

  Barang(
      {required this.name,
      required this.condition,
      required this.amount,
      required this.image});
}

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
