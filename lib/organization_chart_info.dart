import 'package:kai_mobile/add_successor.dart';
import 'package:kai_mobile/add_successor_external.dart';

import 'components/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrgChartInfoDialog extends StatelessWidget {
  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: Consts.padding + Consts.padding,
            bottom: Consts.padding,
            left: Consts.padding,
            right: Consts.padding,
          ),
          margin: EdgeInsets.only(top: 10),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.grey[600], blurRadius: 10.0)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                "Organization Chart Info",
                style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "This is information about some icon on organization chart talent card",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                ),
              ),
              infoList(context, 'assets/images/female_pink.svg',
                  'The employee is female'),
              infoList(context, 'assets/images/male_blue.svg',
                  'The employee is male'),
              infoList(context, 'assets/images/puzzle_green.svg',
                  'The employee impact of loss is high'),
              infoList(context, 'assets/images/puzzle_yellow.svg',
                  'The employee impact of loss is medium'),
              infoList(context, 'assets/images/puzzle_pink.svg',
                  'The employee impact of loss is low'),
              infoList(context, 'assets/images/flag_green.svg',
                  'The employee risk of loss is high'),
              infoList(context, 'assets/images/flag_yellow.svg',
                  'The employee risk of loss is medium'),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
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
                          'OK',
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container infoList(BuildContext context, String asset, String name) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset(asset),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      margin: const EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(children: [
                          Text(
                            name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 13,
                                color: Colors.grey[800]),
                          ),
                        ]),
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

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
