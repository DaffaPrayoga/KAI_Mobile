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

class StructureSearchPage extends StatefulWidget {
  StructureSearchPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  StructureSearchPageState createState() => StructureSearchPageState();
}

enum SearchBy { people, structure }

class StructureSearchPageState extends State<StructureSearchPage> {
  @override
  Widget build(BuildContext context) {
    SearchBy _choosen = SearchBy.people;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return organizationChartPage();
          }));
        },
        backgroundColor: secondaryColor,
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        label: Text(
          "Search",
          style: TextStyle(color: Colors.white),
        ),
      ),
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
            "Search By Structure",
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 0.5,
                color: Colors.grey[900],
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
        ),
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
                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 20, left: 20, right: 20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Text(
                          "Select 1 structure to start search",
                          style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.grey[600],
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  expendableCard("Board Directors 1"),
                  expendableCard("Board Directors 2"),
                  expendableCard("Board Directors 3"),
                  expendableCard("Board Directors 4"),
                  expendableCard("Board Directors 5"),
                  expendableCard("Board Directors 6"),
                ]))
          ]),
        )
      ]),
    );
  }

  Container expendableCard(String name) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3.0)),
      child: ExpandablePanel(
        header: Container(
            margin: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                ),
              ],
            )),
        expanded: Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(3.0)),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  )),
              ExpandablePanel(
                header: Container(
                    margin:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Corporate Directorate",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800]),
                          ),
                        ),
                      ],
                    )),
                expanded: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      top: 0, left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Column(
                    children: [
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 15),
                          height: 0.2,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                          )),
                      ExpandablePanel(
                        header: Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, bottom: 20),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Assestment",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800]),
                                  ),
                                ),
                              ],
                            )),
                        tapHeaderToExpand: true,
                        hasIcon: true,
                      ),
                    ],
                  ),
                ),
                tapHeaderToExpand: true,
                hasIcon: true,
              ),
            ],
          ),
        ),
        tapHeaderToExpand: true,
        hasIcon: true,
      ),
    );
  }
}
