import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fourth/widget/carddetails.dart';
import 'package:fourth/widget/data.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "Selected Card",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
        Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(children: [
                      Positioned.fill(
                        top: 50,
                        right: 10,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        left: -300,
                        top: -90,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      CardDetails(),
                    ]),
                  );
                }))
      ],
    );
  }
}
