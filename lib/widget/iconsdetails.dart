import 'package:flutter/material.dart';
import 'package:fourth/widget/Appcard.dart';
import 'package:share/share.dart';

// ignore: must_be_immutable

class IconsDetails extends StatelessWidget {
  // String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "EXPENDITURE",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.teal,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.indigo[400],
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {
                                  Share.share("Flutter in nice");
                                  Text("Sent");
                                },
                              )),
                        ),
                      ),
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.blue,
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.green,
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.amber,
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.deepOrange,
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                      AppCard(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              height: 40,
                              width: 270,
                              color: Colors.brown,
                              //decoration: BoxDecoration(),
                              child: InkWell(
                                onTap: () {},
                              )),
                        ),
                      ),
                      Container(
                        child: AppCard(
                          child: Container(
                            height: 50,
                            width: 70,
                            color: Colors.white,
                            child: Text("hi"),
                          ),
                        ),
                      )
                    ]))
          ]),
        ));
  }
}
