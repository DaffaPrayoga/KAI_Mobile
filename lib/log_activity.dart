import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class LogActivityPage extends StatefulWidget {
  LogActivityPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  LogActivityPageState createState() => LogActivityPageState();
}

enum SearchBy { people, structure }

class LogActivityPageState extends State<LogActivityPage> {
  @override
  Widget build(BuildContext context) {
    SearchBy _choosen = SearchBy.people;
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
                    "Log Activity",
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
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      logActivityCard(),
                      logActivityCard(),
                      logActivityCard(),
                      logActivityCard(),
                      logActivityCard(),
                      logActivityCard(),
                    ]))
              ]),
            )
          ])),
    );
  }

  Container logActivityCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "10.00 - Sun, 17 August 2020",
                textAlign: TextAlign.left,
                style: TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Wrap(children: [
                RichText(
                  text: TextSpan(
                    text: "Hubert",
                    style: TextStyle(
                      color: Colors.grey[900],
                      height: 1.4,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                          text: " added ",
                          style:
                              TextStyle(color: secondaryColor, fontSize: 14)),
                      TextSpan(
                          text: "Zaire Torff",
                          style:
                              TextStyle(color: Colors.grey[900], fontSize: 14)),
                      TextSpan(
                          text: " - This guy is good",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[900],
                              fontSize: 14)),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
