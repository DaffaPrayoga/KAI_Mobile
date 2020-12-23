import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/positionExpandCard.dart';
import 'package:kai_mobile/search_people.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:expandable/expandable.dart';

class organizationChartPage extends StatefulWidget {
  organizationChartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  organizationChartPageState createState() => organizationChartPageState();
}

class organizationChartPageState extends State<organizationChartPage> {
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
            "Organization Chart",
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
          decoration: BoxDecoration(color: Color(0xFFe5e5e5)),
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
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                                margin: const EdgeInsets.only(bottom: 0),
                                child: Column(
                                  children: [
                                    OutlineButton(
                                      borderSide:
                                          BorderSide(color: secondaryColor),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      color: Colors.white,
                                      textColor: secondaryColor,
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                          left: 20,
                                          right: 20),
                                      splashColor: Colors.blueAccent,
                                      onPressed: () {},
                                      child: Text(
                                        "UP ONE LEVEL",
                                        style: TextStyle(
                                            fontSize: 8.0,
                                            fontFamily: 'AvenirBold'),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: 0.5,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                                child: Column(children: [
                                  positionExpandCard('VP Human Capital', context),
                                  Center(
                                    child: Container(
                                      width: 0.5,
                                      height: 15,
                                      margin: const EdgeInsets.only(
                                          top: 0, bottom: 0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3846153846,
                              height: 0.5,
                              margin: const EdgeInsets.only(top: 0, bottom: 0),
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
                                width: MediaQuery.of(context).size.width / 3.6,
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Column(children: [
                                  Center(
                                    child: Container(
                                      width: 0.5,
                                      height: 15,
                                      margin: const EdgeInsets.only(
                                          top: 0, bottom: 0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                  positionExpandCard('GM Corporate Culture', context),
                                ]),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Column(children: [
                                  Center(
                                    child: Container(
                                      width: 0.5,
                                      height: 15,
                                      margin: const EdgeInsets.only(
                                          top: 0, bottom: 0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                  positionExpandCard('GM Human Capital Dev', context),
                                ]),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.6,
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Column(children: [
                                  Center(
                                    child: Container(
                                      width: 0.5,
                                      height: 15,
                                      margin: const EdgeInsets.only(
                                          top: 0, bottom: 0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                  positionExpandCard(
                                      'Human Resources Business P..', context),
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.eye,
                        size: 20,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {}),
                ],
              )),
        )
      ]),
    );
  }
}
