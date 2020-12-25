import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'package:kai_mobile/employee_profile.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/log_activity.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class DetailSuccessorPage extends StatefulWidget {
  DetailSuccessorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DetailSuccessorPageState createState() => DetailSuccessorPageState();
}

class DetailSuccessorPageState extends State<DetailSuccessorPage> {
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
                    "Detail Successor",
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
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: IconButton(
                    icon: Icon(FontAwesomeIcons.userAlt,
                        color: Colors.grey[700], size: 18),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EmployeeProfilePage();
                      }));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.ellipsisV,
                      color: Colors.grey[700], size: 18),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: new SimpleDialog(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: ListTile(
                                title: new Text('View Family Tree'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: ListTile(
                                title: new Text('Evaluate Readiness'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: ListTile(
                                title: new Text(
                                  'Remove',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          body: Stack(children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 0, right: 0, top: 15, bottom: 15),
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
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Daffa Prayoga',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[900]),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'GM. Human Resource',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Wrap(children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "",
                                                style: TextStyle(
                                                  color: Colors.grey[900],
                                                  height: 1.4,
                                                  fontSize: 14,
                                                ),
                                                children: [
                                                  WidgetSpan(
                                                      child: Icon(
                                                    FontAwesomeIcons
                                                        .birthdayCake,
                                                    color: Colors.grey[500],
                                                    size: 12,
                                                  )),
                                                  TextSpan(
                                                      text: " 10/10/1989",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[500],
                                                          fontSize: 11)),
                                                ],
                                              ),
                                            ),
                                          ]),
                                          Wrap(
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  text: "   ",
                                                  style: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 14,
                                                  ),
                                                  children: [
                                                    WidgetSpan(
                                                        child: Icon(
                                                      FontAwesomeIcons.suitcase,
                                                      color: Colors.grey[500],
                                                      size: 12,
                                                    )),
                                                    TextSpan(
                                                        text:
                                                            " 10 years 10 months",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[500],
                                                            fontSize: 11)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
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
                          margin: const EdgeInsets.only(bottom: 5),
                          height: 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      Container(
                        margin: const EdgeInsets.only(bottom: 0, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Nomination',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: SvgPicture.asset(
                                        'assets/images/org_chart.svg')),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'GM. Finance',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: secondaryColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 3, bottom: 3),
                              child: Text(
                                'Ready Now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: RichText(
                          text: TextSpan(
                            text: "Incumbent :",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                            children: [
                              TextSpan(
                                  text: "   Erick",
                                  style: TextStyle(color: secondaryColor)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: SvgPicture.asset(
                                        'assets/images/org_chart.svg')),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'VP. Human Resources',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: secondaryColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 3, bottom: 3),
                              child: Text(
                                'Ready Now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: RichText(
                          text: TextSpan(
                            text: "Incumbent :",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                            children: [
                              TextSpan(
                                  text: "   Hubert",
                                  style: TextStyle(color: secondaryColor)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 5, top: 20),
                          height: 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      Container(
                        margin: const EdgeInsets.only(bottom: 0, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Talent Pool Nomination',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: SvgPicture.asset(
                                        'assets/images/talent_pool.svg')),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'VP. Human Resources',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: secondaryColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 3, bottom: 3),
                              child: Text(
                                'Unfit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 5, top: 20),
                          height: 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      Container(
                        margin: const EdgeInsets.only(bottom: 0, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Performance & Pool',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 0, right: 0, top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: SvgPicture.asset(
                                      'assets/images/performance_pool.svg'),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  margin:
                                      const EdgeInsets.only(left: 15, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          'Top Talent',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Wrap(children: [
                                          Text(
                                            'This talent has 90 (High) on performance and recomended (High) on capacity',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                color: Colors.grey[600]),
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
                      ),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 5, top: 20),
                          height: 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Talent Information',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      talentInfo(context, 'Date of Birth :', '10/10/1989'),
                      talentInfo(context, 'Bussiness Phone :', '081223786555'),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 5, top: 20),
                          height: 0.5,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Formal Education',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'No records found',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[600]),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'TANI (Total Annual Net Income)',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '777.777.777',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[600]),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'LHKPN (Laporan Harta Kekayaan Pe...',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[600]),
                        ),
                      ),
                    ]))
              ]),
            )
          ])),
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
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
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
