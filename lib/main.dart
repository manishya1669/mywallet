import 'package:flutter/material.dart';
import 'package:fourth/widget/CardSelection.dart';
import 'package:fourth/widget/ExpenseSection.dart';
import 'package:fourth/widget/colors/indigo.dart';
import 'package:fourth/widget/data.dart';
import 'package:fourth/widget/header.dart';
import 'package:fourth/widget/iconsdetails.dart';
import 'package:fourth/widget/routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/homes",
    routes: {
      "/homes": (context) => HomePage(),
      Myroutes.iconroute: (context) => IconsDetails(),
      Myroutes.indigoroute: (context) => Indigo(),
    },
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.teal,
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
          // Container(
          //   child: Slider(),
          // ),
        ]),
      ),
    );
  }
}

// class Slider extends StatelessWidget {
//   const Slider({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
