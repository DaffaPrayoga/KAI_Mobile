import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/components/successorListItem.dart';
import 'const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:expandable/expandable.dart';

Container positionExpandCard(String position_name, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3.0)),
      child: ExpandablePanel(
        header: Container(
            margin: const EdgeInsets.only(top: 7, left: 7, bottom: 7),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    position_name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 5,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '9 directs 29 total',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 4, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            )),
        expanded: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 0, left: 7, right: 7, bottom: 7),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(3.0)),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 5),
                  height: 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  )),
              successorListItem(context),
              successorListItem(context),
              successorListItem(context),
            ],
          ),
        ),
        tapHeaderToExpand: true,
        hasIcon: false,
      ),
    );
  }