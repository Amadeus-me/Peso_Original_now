import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'widgets/buttonmenu.dart';
import 'offices/cmo.dart';
import 'offices/sp.dart';
import 'offices/ssp.dart';
import 'offices/cao.dart';
import 'offices/coa.dart';
import 'offices/cto.dart';
import 'offices/oca.dart';
import 'offices/gso.dart';
import 'offices/chrmo.dart';
import 'offices/ceo.dart';
import 'offices/cho.dart';
import 'offices/cswd.dart';
import 'offices/cbo.dart';
import 'offices/clo.dart';
import 'offices/ccro.dart';
import 'offices/cenro.dart';
import 'offices/cpdo.dart';
import 'offices/cago.dart';
import 'offices/cvo.dart';
import 'offices/cdrrmo.dart';


void main() => runApp(Menu());

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  double radius = 10.0;
  double spacing = 10.0;
  static final buttoncolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: <String, WidgetBuilder>{


        "offices/cao": (BuildContext context) => CAO(),
        "offices/coa": (BuildContext context) => COA(),
        "offices/cto": (BuildContext context) => CTO(),
        "offices/oca": (BuildContext context) => OCA(),
        "offices/gso": (BuildContext context) => GSO(),
        "offices/chrmo": (BuildContext context) => CHRMO(),
        "offices/ceo": (BuildContext context) => CEO(),
        "offices/cho": (BuildContext context) => CHO(),
        "offices/cswd": (BuildContext context) => CSWD(),
        "offices/cbo": (BuildContext context) => CBO(),
        "offices/clo": (BuildContext context) => CLO(),
        "offices/ccro": (BuildContext context) => CCRO(),
        "offices/cenro": (BuildContext context) => CENRO(),
        "offices/cpdo": (BuildContext context) => CPDO(),
        "offices/cago": (BuildContext context) => CAGO(),
        "offices/cvo": (BuildContext context) => CVO(),
        "offices/cdrrmo": (BuildContext context) => CDRRMO(),
        "offices/cmo": (BuildContext context) => CMO(),
        "offices/sp": (BuildContext context) => SP(),
        "offices/ssp": (BuildContext context) => SSP(),
      },

      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: GradientAppBar(
          title: Text("Request Information"),
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
        ),

        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SafeArea(
            child: ListView(
                children: <Widget>[
                  ButtonMenu(
                    officeName: "P.E.S.O",
                    details: "Address",
                    officeSeal:"images/img.png",
                    route: "offices/cmo",
                  ),
                ],

            ),
          ),
        ),
      ),
    );

  }
}





