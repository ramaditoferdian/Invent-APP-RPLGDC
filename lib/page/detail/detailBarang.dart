import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailBarang extends StatefulWidget {
  const DetailBarang({Key? key}) : super(key: key);

  @override
  _DetailBarangState createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarang> {
  List<Barang> listBarang = [
    Barang(
      code: 'LM145-1',
      condition: 'Good',
      date: '12/02/21',
    ),
    Barang(
      code: 'LM145-2',
      condition: 'Poor',
      date: '02/05/21',
    ),
    Barang(
      code: 'LM145-3',
      condition: 'Good',
      date: '03/05/21',
    ),
  ];

  final imageLoc = [
    'images/mouse2.png',
    'images/mouse.png',
  ];

  Widget buildImageSliding(String imageAst, int index){
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

  Widget buildKuantitas() {
    return Container(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Text(
            'Kuantitas',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
          )),
          Container(
              child: Text(
            '10 Unit',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          )),
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
              height: 15,
            ),
            Container(
              width: 350,
              // height: 150,
              // color: Colors.black,
              child: Text(
                'Deskripsi',
                // textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 15,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
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
                    Center(
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                          // height: 250
                        ),
                        itemCount: imageLoc.length,
                        itemBuilder: (context, index, realIndex){
                          final imageLocs = imageLoc[index];

                          return buildImageSliding(imageLocs, index);
                        },
                      ),
                    ),
                    // Container(
                    //   child: Text('data')
                    // ),
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
                          // height: 150,
                          // color: Colors.black,
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
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    // Kategori
                    buildKategori(),
                    SizedBox(
                      height: 10,
                    ),
                    // Kuantitas
                    buildKuantitas(),
                    SizedBox(
                      height: 10,
                    ),
                    // List Barang
                    Container(
                      child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                        itemCount: listBarang.length,
                        itemBuilder: (context, int index) {
                          return buildListBarang(
                            listBarang[index].code,
                            listBarang[index].condition,
                            listBarang[index].date,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      )),
    ));
  }
}

class Barang {
  late String code, condition, date;

  Barang({required this.code, required this.condition, required this.date});
}
