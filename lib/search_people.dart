import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/structure_search.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class SearchPersonPage extends StatefulWidget {
  SearchPersonPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SearchPersonPageState createState() => SearchPersonPageState();
}

enum SearchBy { people, structure }

class SearchPersonPageState extends State<SearchPersonPage> {
  @override
  Widget build(BuildContext context) {
    SearchBy _choosen = SearchBy.people;
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
        actions: <Widget>[
          Transform.scale(
            scale: 0.8,
            child: Container(
              width: 330,
              margin: const EdgeInsets.only(top: 3),
              child: TextField(
                autofocus: true,
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search for successor ',
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                    size: 13,
                  ),
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey[500]),
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 10.0, top: 15.0, right: 14.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(children: [
        Container(
          padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 5, left: 20, right: 20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Text(
                          "Search By :",
                          style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.grey[600],
                            fontSize: 13,
                          ),
                        ),
                        Radio(
                          value: SearchBy.people,
                          groupValue: _choosen,
                          onChanged: (SearchBy value) {
                            setState(() {
                              _choosen = value;
                            });
                          },
                        ),
                        Text(
                          'People',
                          style: new TextStyle(fontSize: 12.0),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return StructureSearchPage();
                            }));
                          },
                          child: Row(
                            children: [
                              Radio(
                                value: SearchBy.structure,
                                groupValue: _choosen,
                                onChanged: (SearchBy value) {
                                  setState(() {
                                    _choosen = value;
                                  });
                                },
                              ),
                              Text(
                                'Structure',
                                style: new TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                  searchListItem(),
                ]))
          ]),
        )
      ]),
    );
  }
}
