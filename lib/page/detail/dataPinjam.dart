import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailBarangDipinjam extends StatefulWidget {
  @override
  DetailBarangDipinjamState createState() => DetailBarangDipinjamState();
}

class DetailBarangDipinjamState extends State<DetailBarangDipinjam> {
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

  Widget scanBarcode() {
    return Container(
        //padding: EdgeInsets.all(50),
        alignment: Alignment.topLeft, // komen
        child: GestureDetector(
          onTap: () {
            setState(() {
              print('Scan Barcode');
            });
          },
          child: Image.asset('assets/barcode_reader.png'),
        ));
  }

  Widget dataPeminjam() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Sedang dipinjam',
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.68),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          child: Text(
            'Data Peminjam',
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              alignment: Alignment.centerLeft,
              child: Text(
                'Nama : ',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Raihan',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              alignment: Alignment.centerLeft,
              child: Text(
                'NIM : ',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                '1302567490',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              alignment: Alignment.centerLeft,
              child: Text(
                'Jurusan : ',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'S1 Informatika',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              alignment: Alignment.centerLeft,
              child: Text(
                'Fakultas : ',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Informatika',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 35),
              alignment: Alignment.centerLeft,
              child: Text(
                'Periode Pinjam : ',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.amber,
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                '15/03/21 - 21/03/21',
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      ],
    );
  }

  Widget deskripsi() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Deskripsi',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint qwerty qerada dadad dada . ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }

  Widget identity() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Kode Unit :',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'LM14-3',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Text(
                  'Kondisi :',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Good',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }

  Widget nameAndBarcode() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Mouse Logitech LM145 Steal Series paling baru series baru lagi yakan emang',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              scanBarcode(),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }

  Widget imageAndBackButton() {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 250,
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  'images/mouse.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            backButton(),
          ],
        ),
        Divider(
          color: Colors.black,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageAndBackButton(),
              nameAndBarcode(),
              identity(),
              deskripsi(),
              dataPeminjam(),
            ],
          ),
        ),
      ),
    );
  }
}
