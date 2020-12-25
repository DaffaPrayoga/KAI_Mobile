import 'package:kai_mobile/add_successor.dart';
import 'package:kai_mobile/add_successor_external.dart';

import 'components/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddOptionDialog extends StatelessWidget {
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddSuccessorInternalPage();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0.5, color: Colors.grey[400])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/internal.svg'),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            margin: const EdgeInsets.only(left: 15, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Internal',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.5,
                                        fontSize: 15,
                                        color: Colors.grey[900]),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Wrap(children: [
                                    Text(
                                      'Add successors from the available data list on database',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          fontSize: 11.5,
                                          color: Colors.grey[600]),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddSuccessorExternalPage();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0.5, color: Colors.grey[400])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/external.svg'),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            margin: const EdgeInsets.only(left: 15, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'External Group KAI',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.5,
                                        fontSize: 15,
                                        color: Colors.grey[900]),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Wrap(children: [
                                    Text(
                                      'Add successors manually by filling the requirement fields',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          fontSize: 11.5,
                                          color: Colors.grey[600]),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddSuccessorExternalPage();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0.5, color: Colors.grey[400])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child:
                                SvgPicture.asset('assets/images/external.svg'),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            margin: const EdgeInsets.only(left: 15, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'External Non Group KAI',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.5,
                                        fontSize: 15,
                                        color: Colors.grey[900]),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Wrap(children: [
                                    Text(
                                      'Add successors manually by filling the requirement fields',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          fontSize: 11.5,
                                          color: Colors.grey[600]),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
                          'CANCEL',
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
