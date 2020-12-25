import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/log_activity.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class EmployeeProfilePage extends StatefulWidget {
  EmployeeProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  EmployeeProfilePageState createState() => EmployeeProfilePageState();
}

class EmployeeProfilePageState extends State<EmployeeProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.grey[400]),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "Org_chart",
                  child: Text(
                    "Employee Profile",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          body: Stack(children: [
            CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Container(
                      decoration: BoxDecoration(color: primaryColor),
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/profile_picture.jpg'),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.65,
                                      margin: const EdgeInsets.only(bottom: 5),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Wrap(children: [
                                          Text(
                                            'Daffa Prayoga',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.65,
                                      margin: const EdgeInsets.only(bottom: 5),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Wrap(children: [
                                          Text(
                                            'Direktur Utama',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'General Information',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          talentInfo(context, 'Name', 'Daffa Prayoga'),
                          talentInfo(
                              context, 'Gelar Akademik', 'SE.Ak, CA, MM'),
                          talentInfo(context, 'NIK', '2312421233321222'),
                          talentInfo(context, 'Tempat', 'Jakarta'),
                          talentInfo(context, 'Tanggal Lahir', '13/01/2000'),
                          talentInfo(context, 'Jenis Kelamin', 'Laki Laki'),
                          talentInfo(context, 'Agama', 'Islam'),
                          talentInfo(context, 'Jabatan',
                              'Direktur Utama PT. Credence Production'),
                          talentInfo(context, 'Alamat Rumah',
                              'Jalan Menuju Sukses Bahagia Blok AB 1 No 2 RT 03 RW 01 Kelurahan Aman Sentosa Kecamatan Sejahtera Kota Makmur'),
                          talentInfo(context, 'Handphone :', '081296711426'),
                          talentInfo(
                              context, 'Email', 'daffa.firdaus13@gmail.com'),
                          talentInfo(context, 'NPWP :', '8754558896554998'),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Social Media',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          socialMediaButton(context,
                              'assets/images/linkedIn.svg', 'LinkedIn'),
                          socialMediaButton(context,
                              'assets/images/instagram.svg', 'Instagram'),
                          socialMediaButton(context,
                              'assets/images/facebook.svg', 'Facebook'),
                          socialMediaButton(
                              context, 'assets/images/twitter.svg', 'Twitter'),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Summary',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          talentInfo(context, 'Keahlian',
                              'Human Capital, Keuangan, dan Investasi'),
                          talentInfo(context, 'Value Pribadi',
                              'Komitmen untuk senantiasa bekerja profesional dengan prinsip “DO The Best” terhadap setiap amanat yang diberikan'),
                          talentInfo(context, 'Visi Pribadi',
                              'Menjadi pemimpin puncak perusahaan yang mampu mewujudkan”great leader create another great leaders”'),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Interest',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                talentInterest(1,
                                    "Keahlian terkait ekonomi bisnis, investasi, manajemen, strategi dan budaya korporasi"),
                                talentInterest(2,
                                    "Minat yang tinggi terkait Pengembangan People & Leadership terutama dalam hal pengembangan kapasitas kepemimpinan"),
                                talentInterest(
                                    3, "Membangun relasi dan jejaring sosial"),
                              ],
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Permintaan Posisi Direktur',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          posisiDirektur("Direktur Utama"),
                          posisiDirektur("Keuangan"),
                          posisiDirektur("Human Capital (SDM)"),
                          posisiDirektur("Manajemen Aset"),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Riwayat Jabatan',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          riwayatJabatanCard(
                              context,
                              "Manager LC",
                              "PT. Credence Kreatif Indonesia",
                              "1/1/2019",
                              "Sampai Saat Ini",
                              "The Most O,Preved Institution of The Year"),
                          riwayatJabatanCard(
                              context,
                              "Manager Diklat",
                              "PT. Mantap Kreatif Indonesia",
                              "1/1/2019",
                              "Sampai Saat Ini",
                              "The Most O,Preved Institution of The Year"),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Organisasi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Penghargaan',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Riwayat Pendidikan & Pelatihan',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Karya Tulis',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Pengalaman Sebagai Pembicara',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Referensi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                          Container(
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.only(bottom: 20, top: 20),
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Keterangan Keluarga',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Wrap(children: [
                              Text(
                                "No data",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[900]),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ]))
            ])
          ])),
    );
  }

  Container riwayatJabatanCard(BuildContext context, String title,
      String instansi, String start, String end, String achievement) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey[500]),
          borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 5, top: 10),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      "Instansi",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Wrap(children: [
                        Text(
                          instansi,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[900]),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      "Awal Menjabat",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Wrap(children: [
                        Text(
                          start,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[900]),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      end,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Wrap(children: [
                        Text(
                          end,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[900]),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      "Tupoksi",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    tupoksiList(
                        1, "Bertanggungjawab terhadap jalannya perseroan"),
                    tupoksiList(2,
                        "Membawahi Direktur Keuangan, Direktur SDM, dan Direktur Teknik")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Text(
                      "Achievement",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Wrap(children: [
                        Text(
                          achievement,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[900]),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row tupoksiList(int num, String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, right: 10),
              child: Text(
                '$num.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 13, color: Colors.grey[900]),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Wrap(children: [
                  Text(
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13, color: Colors.grey[900]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container posisiDirektur(String name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(FontAwesomeIcons.solidCheckCircle,
                      color: Colors.blue)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          name,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row talentInterest(int num, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, right: 20),
              child: Text(
                '$num.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 13, color: Colors.grey[900]),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Wrap(children: [
                  Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13, color: Colors.grey[900]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container socialMediaButton(BuildContext context, String asset, String name) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey[500]),
          borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 5, top: 10),
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    asset,
                    color: primaryColor,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          name,
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[900]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
              child: IconButton(
                  icon: Icon(FontAwesomeIcons.arrowRight,
                      color: Colors.blue, size: 18),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EmployeeProfilePage();
                    }));
                  })),
        ],
      ),
    );
  }

  Row talentInfo(BuildContext context, String label, String detail) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              margin: const EdgeInsets.only(bottom: 10, right: 20),
              child: Text(
                label,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 13, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Wrap(children: [
                  Text(
                    detail,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13, color: Colors.grey[900]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
