import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  //final Widget child;
  //const AppCard({required Key key, required this.child}) : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
  final Widget child;

  AppCard({required this.child});
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    // var color;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin: EdgeInsets.all(0),
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(3),
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}
