import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class familyTreePage extends StatefulWidget {
  familyTreePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  familyTreePageState createState() => familyTreePageState();
}

class familyTreePageState extends State<familyTreePage> {
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
        title: Text(
          "9 Box",
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 0.5,
              color: Colors.grey[900],
              fontSize: 17,
              fontWeight: FontWeight.w900),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: SvgPicture.asset(
                'assets/images/filter.svg',
                height: 25,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: SvgPicture.asset(
                'assets/images/report.svg',
                height: 25,
              ),
            ),
          ),
        ],
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
                        top: 20, bottom: 20, left: 5, right: 5),
                    child: Text(
                      "Details Overview",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.grey[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  nineBoxCard(
                      "Top Talent • 9 (9.5%)", "Turun", "Stabil", 11, "green"),
                      nineBoxCard(
                      "Top Talent • 9 (9.5%)", "Naik", "Turun", 11, "orange"),
                ]))
          ]),
        )
      ]),
    );
  }
}
