import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/page/detail/detailRekap.dart';

class RekapData extends StatefulWidget {
  const RekapData({Key? key}) : super(key: key);

  @override
  _RekapDataState createState() => _RekapDataState();
}

class _RekapDataState extends State<RekapData> {
  List<BarangRekap> listBarangRekap = [
    BarangRekap(
      gambar: 'images/mouse.png',
      nama: 'Mouse Logitech LM145',
      kodeUnit: 'LM145-2',
      denda: 0,
    ),
    BarangRekap(
      gambar: 'images/keyboard-razer.png',
      nama: 'Keyboard Razer',
      kodeUnit: 'LM145-2',
      denda: 4000,
    )
  ];

  Widget verDiv(double height, Color warna) {
    return Container(
      height: height,
      child: VerticalDivider(thickness: 1, color: warna),
    );
  }

  Widget dataRekap(String gambar, nama, kodeUnit, int denda) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailRekap(),
          ),
        );
        print("Detail Barang Data Rekap");
      },
      child: Container(
          color: Colors.white,
          height: 125,
          child: Row(
            children: [
              // Gambar
              SizedBox(width: 10),
              Container(
                child: Image.asset(
                  '$gambar',
                  width: 80,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              // Nama dan Detail
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    // Nama Barang
                    Container(
                      child: Text(
                        '$nama',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Detail Barang
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kode Unit',
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '$kodeUnit',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 15),
                          verDiv(40, Color(0xFFFFC28A)),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Denda',
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Rp $denda',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Raihan',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 22)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left, color: Colors.black, size: 40)),
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(0)),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Color(0xFFF3F3F3),
                  height: 1,
                ),
                itemCount: listBarangRekap.length,
                itemBuilder: (context, int index) {
                  return dataRekap(
                    listBarangRekap[index].gambar,
                    listBarangRekap[index].nama,
                    listBarangRekap[index].kodeUnit,
                    listBarangRekap[index].denda,
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}

class BarangRekap {
  String gambar, nama, kodeUnit;
  int denda;

  BarangRekap({
    required this.gambar,
    required this.nama,
    required this.kodeUnit,
    required this.denda,
  });
}
