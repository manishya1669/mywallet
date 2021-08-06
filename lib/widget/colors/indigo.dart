import 'package:flutter/material.dart';

class Indigo extends StatelessWidget {
  const Indigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Colors.indigo,
          child: Container(
              // height: 20,
              // width: 20,
              decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          )),
        ),
      ],
    );
  }
}
