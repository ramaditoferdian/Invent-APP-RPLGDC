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
  // List<DataDiri> listIsiDataDiri = [
  //   DataDiri(
  //     icon: Icons.email,
  //     penjelasan: 'Good',
  //   ),
  //   DataDiri(
  //     icon: Icons.email,
  //     penjelasan: 'Poor',
  //   ),
  //   DataDiri(
  //     icon: Icons.email,
  //     penjelasan: 'Good',
  //   ),
  // ];

  // static const _iconTypes = <IconData>[
  //   Icons.cake,
  //   Icons.add_location_sharp,
  //   Icons.email
  // ];

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
        print("Data Diri");
      },
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          // backgroundColor: Colors.white,
          side: BorderSide(width: 2.0, color: Colors.black),
          shape: CircleBorder()),
      child: Icon(
        Icons.person,
        color: Colors.black,
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
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.history,
        ),
        iconSize: 40,
        color: Colors.black,
        onPressed: () {
          print('History Item');
        },
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

  Widget isiDataDiri() {
  return Row(
      children: <Widget> [
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
            'Bebas',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400
              ),
            ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9559),
          body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                            width: 275,
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
                                isiDataDiri(),
                                isiDataDiri(),
                                isiDataDiri(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                width: double.infinity,
                height: 700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class DataDiri {
//   String penjelasan;
//   IconData icon;

//   DataDiri({required this.icon, required this.penjelasan});
// }
