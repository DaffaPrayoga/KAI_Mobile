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

class PositionDescriptionPage extends StatefulWidget {
  PositionDescriptionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  PositionDescriptionPageState createState() => PositionDescriptionPageState();
}

enum SearchBy { people, structure }

class PositionDescriptionPageState extends State<PositionDescriptionPage> {
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
                  "VP Human Capital",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      letterSpacing: 0.5,
                      color: Colors.grey[900],
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  "Code : 13012000",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.grey[800],
            tabs: [
              Tab(text: "Internal"),
              Tab(text: "External"),
            ],
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: SvgPicture.asset(
                  'assets/images/log_activity.svg',
                  height: 25,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: SvgPicture.asset(
                  'assets/images/add_successor.svg',
                  height: 25,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Stack(children: [
              Container(
                padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
                child: CustomScrollView(slivers: [
                  SliverToBoxAdapter(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Approved",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        internalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Need Approval",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        internalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Submitted",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        internalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Saved Candidate",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        internalSuccessorCard(),
                        internalSuccessorCard(),
                        internalSuccessorCard(),
                      ]))
                ]),
              )
            ]),
            Stack(children: [
              Container(
                padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
                child: CustomScrollView(slivers: [
                  SliverToBoxAdapter(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Approved",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        externalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Need Approval",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        externalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Submitted",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        externalSuccessorCard(),
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            height: 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20, bottom: 10),
                          child: Text(
                            "Saved Candidate",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        externalSuccessorCard(),
                        externalSuccessorCard(),
                        externalSuccessorCard(),
                      ]))
                ]),
              )
            ]),
          ],
        ),
      ),
    );
  }

  Container internalSuccessorCard() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 0, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Daffa Prayoga',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[800]),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 3, bottom: 3),
                          child: Text(
                            'Ready Now',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          child: SvgPicture.asset(
                            'assets/images/female_pink.svg',
                            height: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          child: SvgPicture.asset(
                            'assets/images/smile_green.svg',
                            height: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          child: SvgPicture.asset(
                            'assets/images/puzzle_pink.svg',
                            height: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          child: SvgPicture.asset(
                            'assets/images/flag_yellow.svg',
                            height: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, right: 3),
                          child: SvgPicture.asset(
                            'assets/images/health_green.svg',
                            height: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconButton(
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
            icon: Icon(FontAwesomeIcons.ellipsisV,
                color: Colors.grey[500], size: 20),
          )
        ],
      ),
    );
  }

  Container externalSuccessorCard() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Daffa Prayoga',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[800]),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 3, bottom: 3),
                          child: Text(
                            'Ready Now',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 3),
                          child: Text(
                            'Tokopedia',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          IconButton(
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
            icon: Icon(FontAwesomeIcons.ellipsisV,
                color: Colors.grey[500], size: 20),
          )
        ],
      ),
    );
  }
}
