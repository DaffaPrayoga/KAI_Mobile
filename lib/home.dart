import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class myHomePage extends StatefulWidget {
  myHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  myHomePageState createState() => myHomePageState();
}

class myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.grey[400]),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        centerTitle: false,
        title: Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0.5,
              color: Colors.grey[900],
              fontSize: 17,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFFe5e5e5)),
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 80),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, bottom: 20, left: 5, right: 5),
                    child: Text(
                      "Select page to open",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.grey[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return organizationChartPage();
                      }));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[200], blurRadius: 8.0)
                          ],
                        ),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 0,
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20, top: 20),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Hero(
                                        tag: "Org_chart",
                                        child: Text(
                                          "Organization Chart",
                                          style: TextStyle(
                                              color: secondaryColor,
                                              letterSpacing: 0.5,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ])))),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FamilyTreePage();
                      }));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[200], blurRadius: 8.0)
                          ],
                        ),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 0,
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20, top: 20),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Family Tree",
                                        style: TextStyle(
                                            color: secondaryColor,
                                            letterSpacing: 0.5,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ])))),
                  )
                ]))
          ]),
        )
      ]),
    );
  }
}
