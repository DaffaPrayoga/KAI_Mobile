import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masonry_grid/masonry_grid.dart';

Container nineBoxCard(String title, String graph1, String graph2,
    int bullet_count, String accent) {
  return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 8.0)],
      ),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          child: Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.grey[900],
                          letterSpacing: 0.5,
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RichText(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 11,
                          ),
                          children: [
                            WidgetSpan(
                                child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Icon(
                                FontAwesomeIcons.tachometerAlt,
                                color: Colors.grey[600],
                                size: 13,
                              ),
                            )),
                            TextSpan(
                              text: " Performance: ",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  letterSpacing: 0.5,
                                  color: Colors.grey[600]),
                            ),
                            WidgetSpan(
                                child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Icon(
                                (graph1 == "Naik")
                                    ? FontAwesomeIcons.arrowUp
                                    : (graph1 == "Turun")
                                        ? FontAwesomeIcons.arrowDown
                                        : (graph1 == "Stabil")
                                            ? FontAwesomeIcons.minus
                                            : FontAwesomeIcons.minus,
                                color: Colors.green,
                                size: 12,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RichText(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 11,
                          ),
                          children: [
                            WidgetSpan(
                                child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Icon(
                                FontAwesomeIcons.boxes,
                                color: Colors.grey[600],
                                size: 13,
                              ),
                            )),
                            TextSpan(
                              text: " Capacity: ",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  letterSpacing: 0.5,
                                  color: Colors.grey[600]),
                            ),
                            WidgetSpan(
                                child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Icon(
                                (graph1 == "Naik")
                                    ? FontAwesomeIcons.arrowUp
                                    : (graph1 == "Turun")
                                        ? FontAwesomeIcons.arrowDown
                                        : (graph1 == "Stabil")
                                            ? FontAwesomeIcons.minus
                                            : FontAwesomeIcons.minus,
                                color: Colors.green,
                                size: 12,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, right: 0, top: 20, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, top: 30, bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: (accent == "green")
                              ? Colors.green[100]
                              : (accent == "orange")
                                  ? Colors.orange[100]
                                  : (accent == "blue")
                                      ? Colors.blue[100]
                                      : (accent == "Red")
                                          ? Colors.red[100]
                                          : Colors.green[100]),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: (accent == "green")
                                    ? Colors.green
                                    : (accent == "orange")
                                        ? Colors.orange
                                        : (accent == "blue")
                                            ? Colors.blue
                                            : (accent == "Red")
                                                ? Colors.red
                                                : Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ]))));
}
