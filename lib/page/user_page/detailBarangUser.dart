import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailBarangUser extends StatefulWidget {
  const DetailBarangUser({Key? key}) : super(key: key);

  @override
  _DetailBarangUserState createState() => _DetailBarangUserState();
}

class _DetailBarangUserState extends State<DetailBarangUser> {
  final imageLoc = [
    'images/mouse2.png',
    'images/mouse.png',
  ];

  Widget buildImageSliding(String imageAst, int index) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 12),
      child: Image.asset(
        imageAst,
        // fit: BoxFit.cover,
      ),
    );
  }

  Widget buildKategori() {
    return Container(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Text(
            'Kategori',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
          )),
          ConstrainedBox(
            constraints: BoxConstraints(),
            child: Container(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFFFFB674),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Prasarana",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeskripsi() {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: Text(
                'Deskripsi',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        // Isi deksripsi
        Container(
          width: 300,
          child: Text(
            'Mouse Logitech LM145 salah satu mouse dari logitech yang non-wireless.\nTersedia warna :\n\n- Merah \n- Biru \n- Kuning',
            style: GoogleFonts.poppins(
              color: Color(0xFF000000),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildListBarang(String kode, kondisi, tanggal) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 85, 0),
          // color: Colors.black,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                    // 'LM145-1',
                    '$kode',
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w500)),
              ),
              Container(
                child: Text(
                    // 'Good',
                    '$kondisi',
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              Container(
                child: Text(
                    // '12/02/21',
                    '$tanggal',
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
        // Divider(
        //   color: Colors.grey,
        //   thickness: 0.5,
        // ),
      ],
    );
  }

  Widget backButton() {
    return Container(
      //padding: EdgeInsets.all(50),
      alignment: Alignment.topLeft, // komen
      child: IconButton(
        icon: Icon(
          Icons.chevron_left,
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

  Widget buildStatusKondisi(String status, Color warna) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
        color: warna,
        border: Border.all(
          color: warna,
          width: 2,
        ),
      ),
      child: Text(
        status,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget identity() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Kuantitas',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  // textAlign: TextAlign.start,
                ),
                Text(
                  '10 Unit',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  // textAlign: TextAlign.end,
                ),
              ],
            ),
            Container(
              height: 80,
              child: VerticalDivider(
                color: Colors.black.withOpacity(0.2),
                thickness: 1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kondisi',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    buildStatusKondisi("Good", Colors.amber),
                    SizedBox(width: 10),
                    buildStatusKondisi("Poor", Color(0xFFEA340C)),
                  ],
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.black.withOpacity(0.2),
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }

  Widget buildButtonSetuju(_width) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.pop(context);
        print('Setuju');
      },
      child: Container(
        height: 35,
        width: _width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Color(0xFFE4E4E4),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Text(
            'Setuju',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }

  void showDialogInformation() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.25),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return showInformation();
      },
      transitionBuilder: (_, anim, __, child) {
        return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1 * anim.value,
              sigmaY: 1 * anim.value,
            ),
            child: SlideTransition(
              position:
                  Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
              child: child,
            ));
      },
    );
  }

  Widget showInformation() {
    double _height = 325;
    double _width = 300;
    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    width: _width,
                    padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            print('close');
                          },
                          child: Icon(
                            Icons.close,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: (_width / 4 - 25),
                        ),
                        Center(
                          child: Text(
                            'INFORMASI',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 23,
                              color: Color(0xFFCB2500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      color: Color(0xFFFFB674),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "1. Durasi peminjaman 1 minggu \n\n2. Lewat dari 1 minggu akan dikenakan denda :  \n\t  - Mahasiswa : Rp 2.000/hari \n\t  - Dosen : Rp 4.000/hari \n\n3. Barang harus kembali dalam keadaan yang sama saat dipinjam.",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF000000),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  buildButtonSetuju(_width - 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPinjamBtn() {
    return OutlinedButton(
      onPressed: () {
        print("Pinjam di click");
        showDialogInformation();
      },
      child: Text('Pinjam',
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 2)),
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 75),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: BorderSide(color: Colors.red)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: GestureDetector(
            child: Stack(
          children: <Widget>[
            Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  //  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: [
                          Center(
                            child: CarouselSlider.builder(
                              options: CarouselOptions(
                                  // height: 250
                                  ),
                              itemCount: imageLoc.length,
                              itemBuilder: (context, index, realIndex) {
                                final imageLocs = imageLoc[index];
                                return buildImageSliding(imageLocs, index);
                              },
                            ),
                          ),
                          backButton()
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                        // height: 10,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 350,
                            child: Text(
                              'Mouse Logitech LM145',
                              // textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      // Deskripsi
                      buildDeskripsi(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                        height: 1,
                      ),
                      identity(),
                      SizedBox(
                        height: 10,
                      ),
                      // Kuantitas
                      buildKategori(),
                      SizedBox(
                        height: 40,
                      ),
                      buildPinjamBtn(),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )),
          ],
        )),
      ),
    ));
  }
}
