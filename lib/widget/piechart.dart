import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fourth/widget/data.dart';
import 'package:fourth/widget/routes.dart';

class Piechart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          boxShadow: customShadow, color: primaryColor, shape: BoxShape.circle),
      child: Stack(
        children: [
          CustomPaint(
            child: Container(),
            foregroundPainter: PieChartPainter(),
          ),
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: Container(
                height: 20,
                width: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Myroutes.iconroute);
                  },
                  splashColor: Colors.red,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Icon(Icons.money),
                  ),
                  //   Icon(Icons.details_outlined),
                  //label: Text("")),
                ),
                decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 100;
    double total = 0;
    expense.forEach((element) {
      total += element['amount'];
    });
    var startRadius = -pi / 2;
    for (int i = 0; i < expense.length; i++) {
      var currentExpense = expense[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadius, sweepRadian, false, paint);
      startRadius += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
