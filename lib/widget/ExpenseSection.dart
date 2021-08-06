import 'package:flutter/material.dart';
import 'package:fourth/widget/piechart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  Expanded(child: Container()),
        Expanded(child: Piechart())
      ],
    );
  }
}
