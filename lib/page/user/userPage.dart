import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<DataDiri> listIsiDataDiri = [
    DataDiri(
      email: 'adi@mail.com',
      nim: '1301194084',
      jurusan: 'Informatika',
      fakultas: 'FIF',
    ),
  ];

  List<DataPinjam> listHistoryBarang = [
    DataPinjam(
      gambar : 'images/laptop_asus.png',
      nama : 'Asus VivoBook S14',
      kodeUnit : 'AVD14-1',
      tanggal : '12/05/01',
      oleh : 'Falia',
      status: 'Pinjam',
      warna: Color(0xFF2EDE8A)
    ),
    DataPinjam(
      gambar : 'images/whiteboard.jpg',
      nama : 'Whiteboard',
      kodeUnit : 'AVS14-1',
      tanggal : '10/04/21',
      oleh : 'Falia',
      status: 'Kembali',
      warna : Color(0xFFC4C4C4)
    ),
    DataPinjam(
      gambar : 'images/wacom.png',
      nama : 'Tablet Wacom Intous',
      kodeUnit : 'PTWI-11',
      tanggal : '12/05/01',
      oleh : 'Aliya',
      status: 'Kembali',
      warna : Color(0xFFC4C4C4)
    )
  ];
  // =========================================== //

  bool isClicked = true;
  bool menuDataDiri = true;
  bool menuHistory = false;

  Widget userAccount() {
    double _size = 85;

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

  Widget editIcon() {
    return OutlinedButton(
      onPressed: () {
        print("Edit User");
      },
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          // backgroundColor: Colors.white,
          side: BorderSide(width: 2.0, color: Colors.black),
          shape: CircleBorder()),
      child: Icon(
        Icons.mode_edit,
        color: Colors.black,
        size: 25,
      ),
    );
  }

  Widget personKecilIcon() {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          menuDataDiri = isClicked;
          menuHistory = !isClicked;
          print("Data Diri");
        });
      },
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          // backgroundColor: Colors.white,
          side: BorderSide(
              width: 2.0, color: menuDataDiri ? Colors.black : Colors.grey),
          shape: CircleBorder()),
      child: Icon(
        Icons.person,
        color: menuDataDiri ? Colors.black : Colors.grey,
        size: 25,
      ),
    );
  }

  Widget buildIdentitasAtas() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Falia Aniya',
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'Mahasiswa/Dosen',
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w300),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget historyItemIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          menuDataDiri = !isClicked;
          menuHistory = isClicked;
          print("History");
        });
      },
      child: Icon(
        Icons.history,
        size: 40,
        color: menuHistory ? Colors.black : Colors.grey,
      ),
    );
  }

  Widget verDiv() {
    return Container(
      height: 60,
      child: VerticalDivider(
          thickness: 1,
          // indent: 1,
          // endIndent:0,
          color: Colors.grey),
    );
  }
  
  Widget verDivVer2() {
    return Container(
      height: 40,
      child: VerticalDivider(
          thickness: 1,
          // indent: 1,
          // endIndent:0,
          color: Color(0xFFffc28a),
      )
    );
  }

  Widget emailUser(String text) {
    return Row(children: [
      Container(
        child: Icon(
          Icons.email,
          size: 30,
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Container(
        child: Text(
          '$text',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    ]);
  }

  Widget nimUser(String text) {
    return Row(children: [
      Container(
        child: Icon(
          Icons.badge_outlined,
          size: 30,
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Container(
        child: Text(
          '$text',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    ]);
  }

  Widget jurAndFakUser(String text) {
    return Row(children: [
      Container(
        child: Icon(
          Icons.business,
          size: 30,
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Container(
        child: Text(
          '$text',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    ]);
  }

  Widget isiDataDiri(String mail, nomormah, jurus, fakul) {
    return Column(
      children: <Widget>[
        emailUser(mail),
        SizedBox(
          height: 30,
        ),
        nimUser(nomormah),
        SizedBox(
          height: 30,
        ),
        jurAndFakUser(jurus),
        SizedBox(
          height: 30,
        ),
        jurAndFakUser(fakul),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget untukSatuBarang (String gambar,nama,kode,tanggal,oleh,status, Color warna) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
          height: 125,
          child: Row(
            children: [
              // Gambar 
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
                width: 5,
              ),
              Container(
                width: 225,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15
                    ),
                    // Nama Barang
                    Container(
                      child: Text(
                        '$nama',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
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
                            children: [
                              Text('Kode Unit',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5)
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('$kode',
                                style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                ),)
                            ],
                          ),
                          verDivVer2(),
                          Column(
                            children: [
                              Text('Tanggal',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5)
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('$tanggal',
                                style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                ),)
                            ],
                          ),
                          verDivVer2(),
                          Column(
                            children: [
                              Text('Oleh',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5)
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('$oleh',
                                style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 72),
                child: Text (' $status ') ,
                  decoration: BoxDecoration(
                    color: warna,
                    border: Border.all(
                          color: warna ,
                          width: 2.0 ,
                        ),
                    borderRadius: BorderRadius.circular(15),
                      ),
                ),
            ],
          )
        ),
        Divider(
          color: Colors.grey,
          height: 1,
        )
      ],
    );
  }

  List<IconData> icons = [Icons.person, Icons.home, Icons.notifications];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9559),
          body: SafeArea(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [

              // Bagian atas (Foto,Nama Edit)
              Container(
                width: 375,
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    userAccount(),
                    buildIdentitasAtas(),
                    editIcon(),
                  ],
                ),
              ),
              Container(
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    // margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.black,
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              personKecilIcon(),
                              verDiv(),
                              historyItemIcon()
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          // width: 300,
                          // height: 100,
                          // color: Colors.black,
                          child: Column(
                            children: [
                              Visibility(
                                visible: menuDataDiri,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(40, 30, 15, 0),
                                  child: ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (BuildContext context, int index) =>
                                        Divider(
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    ),
                                    itemCount: listIsiDataDiri.length,
                                    itemBuilder: (context, int index) {
                                      return isiDataDiri(
                                        listIsiDataDiri[index].email,
                                        listIsiDataDiri[index].nim,
                                        listIsiDataDiri[index].jurusan,
                                        listIsiDataDiri[index].fakultas,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: menuHistory,
                                child: ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (BuildContext context, int index) =>
                                        Divider(
                                          height: 0,
                                    ),
                                    itemCount: listHistoryBarang.length,
                                    itemBuilder: (context, int index) {
                                      return untukSatuBarang(
                                        listHistoryBarang[index].gambar,
                                        listHistoryBarang[index].nama,
                                        listHistoryBarang[index].kodeUnit,
                                        listHistoryBarang[index].tanggal,
                                        listHistoryBarang[index].oleh,
                                        listHistoryBarang[index].status,
                                        listHistoryBarang[index].warna,
                                      );
                                    },
                                  ),
                              )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                width: double.infinity,
                height: 625,
                // height: MediaQuery.of(context).size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataDiri {
  late String email, nim, jurusan, fakultas;

  DataDiri({
    required this.email,
    required this.nim,
    required this.jurusan,
    required this.fakultas,
  });
}

class DataPinjam {
  late String gambar, nama, kodeUnit, tanggal, oleh,status;
  Color warna;
  DataPinjam({
    required this.gambar,
    required this.nama,
    required this.kodeUnit,
    required this.tanggal,
    required this.oleh,
    required this.status,
    required this.warna,
  });
}

