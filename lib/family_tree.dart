import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/positionExpandCard.dart';
import 'package:kai_mobile/family_tree_info.dart';
import 'package:kai_mobile/position_description.dart';
import 'package:kai_mobile/search_people.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:expandable/expandable.dart';

class FamilyTreePage extends StatefulWidget {
  FamilyTreePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  FamilyTreePageState createState() => FamilyTreePageState();
}

class FamilyTreePageState extends State<FamilyTreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Hero(
          tag: "Org_chart",
          child: Text(
            "Family Tree",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[900],
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: IconButton(
                icon: Icon(FontAwesomeIcons.search,
                    color: Colors.grey[700], size: 20),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchPersonPage();
                  }));
                }),
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          // decoration: BoxDecoration(color: Color(0xFFe5e5e5)),
          padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  InteractiveViewer(
                    panEnabled: true, // Set it to false to prevent panning.
                    boundaryMargin: EdgeInsets.all(80),
                    minScale: 0.5,
                    maxScale: 4,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      child: Stack(children: [
                        Positioned(
                            top: MediaQuery.of(context).size.height *
                                -0.392275862068966,
                            left: MediaQuery.of(context).size.width * 0.23,
                            child: Transform.scale(
                              scale: 4,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MediaQuery.of(context).size.width *
                                            0.5),
                                    border: Border.all(
                                        width: 0.1, color: Color(0xFFADADAD))),
                              ),
                            )),
                        Positioned(
                            top: MediaQuery.of(context).size.height *
                                    -0.392275862068966 +
                                140,
                            left: MediaQuery.of(context).size.width * 0.23,
                            child: Transform.scale(
                              scale: 4,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MediaQuery.of(context).size.width *
                                            0.5),
                                    border: Border.all(
                                        width: 0.1, color: Color(0xFFADADAD))),
                              ),
                            )),
                        Positioned(
                            top: MediaQuery.of(context).size.height *
                                    -0.392275862068966 +
                                140 +
                                140,
                            left: MediaQuery.of(context).size.width * 0.23,
                            child: Transform.scale(
                              scale: 4,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MediaQuery.of(context).size.width *
                                            0.5),
                                    border: Border.all(
                                        width: 0.1, color: Color(0xFFADADAD))),
                              ),
                            )),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: Column(
                                    children: [
                                      peopleData("white"),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                ),
                              ],
                            ),
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                width: 0.5,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: [
                                    peopleData("yellow"),
                                  ]),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: peopleData("green"),
                                    ),
                                  ]),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: [
                                    peopleData("green"),
                                  ]),
                                ),
                              ],
                            ),
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                width: 0.5,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: []),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: peopleData("yellow"),
                                    ),
                                  ]),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  child: Column(children: [
                                    peopleData("pink"),
                                  ]),
                                ),
                              ],
                            ),
                            Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                width: 0.5,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: Column(children: []),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: peopleData("pink"),
                                    ),
                                  ]),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.6,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: Column(children: []),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )
                ]))
          ]),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.infoCircle,
                        size: 20,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {
                        return showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              FamilyTreeInfoDialog(),
                        );
                      }),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: SvgPicture.asset(
                        'assets/images/collapse.svg',
                        height: 25,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 15),
                      child: SvgPicture.asset(
                        'assets/images/expand.svg',
                        height: 25,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }

  GestureDetector peopleData(String color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PositionDescriptionPage();
        }));
      },
      child: Container(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: (color == "white")
                      ? Colors.white
                      : (color == "green")
                          ? Colors.green
                          : (color == "yellow")
                              ? Colors.yellow
                              : (color == "pink")
                                  ? Colors.pink
                                  : Colors.white),
              borderRadius: BorderRadius.circular(200),
              color: Colors.white,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Daffa Prayoga",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 0.5,
                  color: Colors.grey[900],
                  fontSize: 6,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "VP Human Capital Mg",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[600],
                fontSize: 4.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              "3 Nomination, 3 Successor",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[600],
                fontSize: 3.9,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
