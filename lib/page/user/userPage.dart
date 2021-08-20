import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatefulWidget {
  const UserPage({ Key? key }) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<DataDiri> listIsiDataDiri = [
    DataDiri(
      email:'adi@mail.com',
      nim: '1301194084',
      jurusan: 'Informatika',
      fakultas: 'FIF',
    ),
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
            width: 2.0, 
            color: menuDataDiri ? Colors.black : Colors.grey),
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
          Text('Falia Aniya',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
          Text('Mahasiswa/Dosen',
            style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w300
            ),
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
  
  Widget dividerKuning() {
    return Container(
      height: 60, 
      child: VerticalDivider(
        thickness: 1,
        // indent: 1,
        // endIndent:0,
        color: Colors.grey
        ),
      );
  }

  Widget emailUser(String text){
    return Row(
      children: [
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
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400
              ),
            ),
          ),
      ]
    );
  }
  
  Widget nimUser(String text){
    return Row(
      children: [
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
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400
              ),
            ),
          ),
      ]
    );
  }
  
  Widget jurAndFakUser(String text){
        return Row(
      children: [
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
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400
              ),
            ),
          ),
      ]
    );
  }
  
  Widget isiDataDiri(String mail,nomormah,jurus,fakul) {
  return Column(
      children: <Widget> [
        // Container(
        //   child: Icon(
        //     Icons.email,
        //     size: 30,
        //   ),
        // ),
        // SizedBox(
        //   width: 30,
        // ),
        // Container(
        //   child: Text(
        //     '$isi',
        //     style: GoogleFonts.poppins(
        //       fontSize: 18,
        //       fontWeight: FontWeight.w400
        //       ),
        //     ),
        // ),
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
                child:ClipRRect(
                  // borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    // margin: const EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
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
                                dividerKuning(),
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
                            margin: EdgeInsets.fromLTRB(40, 35, 15, 0),
                            // color: Colors.black,
                            child: Column(
                              children: [
                                // Container(
                                //   child: ListView(  
                                //     children: <Widget> [
                                //     ListTile(
                                //       leading: Icon(Icons.email,
                                //         color: Colors.black,),
                                //       title: Text(
                                //       'Bebas',
                                //       style: GoogleFonts.poppins(
                                //         fontSize: 18,
                                //         fontWeight: FontWeight.w400
                                //         ),
                                //       ),
                                //     ),
                                //     ]
                                //   ),
                                // )
                                Visibility(
                                  visible: menuDataDiri,
                                  child: Container(
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
                                )
                                // SizedBox(
                                //   height: 10,
                                // ), 
                              ],
                            ),
                          )
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
  late String email,nim,jurusan,fakultas;

  DataDiri({
    required this.email, 
    required this.nim,
    required this.jurusan,
    required this.fakultas,
  });
}
