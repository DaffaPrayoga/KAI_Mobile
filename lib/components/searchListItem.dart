import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/position_description.dart';
import 'const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

Container searchListItem() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '23456789083',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 11, color: Colors.grey[600]),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Human Resource',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
