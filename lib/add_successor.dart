import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/add_option.dart';
import 'package:kai_mobile/add_successor_form.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'package:kai_mobile/detail_successor.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/log_activity.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class AddSuccessorInternalPage extends StatefulWidget {
  AddSuccessorInternalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AddSuccessorInternalPageState createState() =>
      AddSuccessorInternalPageState();
}

class AddSuccessorInternalPageState extends State<AddSuccessorInternalPage> {
  bool choose = false;
  int _selectedIndex = 0;
  List<String> _options = [
    'All (100)',
    'Top Talent (10)',
    'Promotable 1 (40)',
    'Promotable 2 (30)',
    'Solid Contributor 1 (40)',
    'Solid Contributor 2 (20)'
  ];
  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        backgroundColor: Colors.transparent,
        pressElevation: 2,
        shape: StadiumBorder(
            side: BorderSide(
                color: (_selectedIndex == i)
                    ? Colors.transparent
                    : Colors.grey[300])),
        label: Text(_options[i],
            style: TextStyle(
                height: 0.7,
                color:
                    (_selectedIndex == i) ? secondaryColor : Colors.grey[900],
                fontSize: 11,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w800)),
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
        selectedColor: Color(0xFFFEF0E9),
      );
      chips.add(Padding(padding: EdgeInsets.only(left: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

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
                  "Add Successor",
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
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, kToolbarHeight),
            child: Container(
              margin: const EdgeInsets.only(
                  top: 3, left: 20, right: 20, bottom: 10),
              child: TextField(
                autofocus: true,
                style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search employee...',
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                    size: 17,
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
          ),
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
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      height: 30,
                      child: _buildChips(),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      width: double.infinity,
                      child: OutlineButton(
                          borderSide: BorderSide(color: secondaryColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          textColor: secondaryColor,
                          onPressed: () {
                            setState(() {
                              if (choose == false) {
                                choose = true;
                              } else {
                                choose = false;
                              }
                            });
                          },
                          child: Text(
                            'SELECT ALL',
                          )),
                    ),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                    internalSuccessorCard(),
                  ]))
            ]),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  offset: Offset(0, 7),
                  blurRadius: 30,
                  color: Color(0xFF4B1A39).withOpacity(0.2),
                )
              ]),
              padding:
                  EdgeInsets.only(left: 16, bottom: 15, right: 16, top: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlineButton(
                      borderSide: BorderSide(color: secondaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      textColor: secondaryColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'CANCEL',
                      )),
                  SizedBox(width: 10),
                  FlatButton(
                      color: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AddSuccessorFormPage();
                        }));
                      },
                      child: Text(
                        'CONTINUE',
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  GestureDetector internalSuccessorCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailSuccessorPage();
        }));
      },
      child: Container(
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
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[800]),
                          ),
                        ),
                      ),
                      Row(
                        children: [
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
            Checkbox(
                value: choose,
                activeColor: secondaryColor,
                onChanged: (bool newValue) {
                  setState(() {
                    choose = newValue;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
