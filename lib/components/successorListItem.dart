import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kai_mobile/components/nineBoxCard.dart';
import 'package:kai_mobile/position_description.dart';
import 'const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';
import 'package:expandable/expandable.dart';

GestureDetector successorListItem(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PositionDescriptionPage();
      }));
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
                height: 15,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Daffa Prayoga',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 4.2, color: Colors.grey[800]),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 1, right: 1),
                          child: SvgPicture.asset(
                            'assets/images/female_pink.svg',
                            height: 5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, right: 1),
                          child: SvgPicture.asset(
                            'assets/images/smile_green.svg',
                            height: 5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, right: 1),
                          child: SvgPicture.asset(
                            'assets/images/puzzle_pink.svg',
                            height: 5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, right: 1),
                          child: SvgPicture.asset(
                            'assets/images/flag_yellow.svg',
                            height: 5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, right: 1),
                          child: SvgPicture.asset(
                            'assets/images/health_green.svg',
                            height: 5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(FontAwesomeIcons.arrowRight,
                color: secondaryColor, size: 5),
          )
        ],
      ),
    ),
  );
}
