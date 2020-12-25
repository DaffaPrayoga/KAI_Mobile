import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/add_option.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/searchListItem.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'package:kai_mobile/detail_successor.dart';
import 'package:kai_mobile/family_tree.dart';
import 'package:kai_mobile/log_activity.dart';
import 'package:kai_mobile/organization_chart.dart';
import 'package:kai_mobile/position_description.dart';
import 'components/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

class AddSuccessorExternalPage extends StatefulWidget {
  AddSuccessorExternalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AddSuccessorExternalPageState createState() =>
      AddSuccessorExternalPageState();
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

class AddSuccessorExternalPageState extends State<AddSuccessorExternalPage> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Ready Now"),
    ListItem(2, "Need Development"),
    ListItem(3, "Unfit"),
  ];
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(
            listItem.name,
            style: TextStyle(
                fontSize: 14, color: Colors.grey[600], fontFamily: 'Avenir'),
          ),
          value: listItem,
        ),
      );
    }
    return items;
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
                  "Add Successor (External)",
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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Fill data below to add successor from external resources',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'Phone',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'Company',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 15, top: 35),
                        height: 0.5,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                        )),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(width: 0.7, color: Colors.grey[400])),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            hint: Text("Readiness"),
                            value: _selectedItem,
                            items: _dropdownMenuItems,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            }),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5.0, right: 5.0, top: 20,bottom: 150),
                      child: TextField(
                        autofocus: false,
                        maxLines: 4,
                        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                        decoration: InputDecoration(
                          hintText: 'Reason',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey[500]),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
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
                          return PositionDescriptionPage();
                        }));
                      },
                      child: Text(
                        'SUBMIT',
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container personForm() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.7, color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(children: [
        Container(
          width: double.infinity,
          margin:
              const EdgeInsets.only(left: 20, right: 0, top: 15, bottom: 15),
          child: Column(
            children: [
              Row(
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
                                  margin:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: SvgPicture.asset(
                                    'assets/images/female_pink.svg',
                                    height: 17,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: SvgPicture.asset(
                                    'assets/images/smile_green.svg',
                                    height: 17,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: SvgPicture.asset(
                                    'assets/images/puzzle_pink.svg',
                                    height: 17,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 3, right: 3),
                                  child: SvgPicture.asset(
                                    'assets/images/flag_yellow.svg',
                                    height: 17,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 3, right: 3),
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
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 15, right: 10),
                margin: const EdgeInsets.only(left: 0.0, right: 20.0, top: 20),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 0.7, color: Colors.grey[400])),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      hint: Text("Readiness"),
                      value: _selectedItem,
                      items: _dropdownMenuItems,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem = value;
                        });
                      }),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0.0, right: 20.0, top: 10),
                child: TextField(
                  autofocus: false,
                  maxLines: 4,
                  style: TextStyle(fontSize: 14, color: Colors.grey[900]),
                  decoration: InputDecoration(
                    hintText: 'Reason',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 12.0, top: 12.0, right: 14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
