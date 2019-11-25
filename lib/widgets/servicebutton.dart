import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ServiceButton extends StatelessWidget {

  ServiceButton(
      {this.serviceName, this.serviceIcon, this.pageRoute});

  final String serviceName;
  final IconData serviceIcon;
  final String pageRoute;

  double spacing = 10.0;
  double radius = 10.0;
  static final buttoncolor = Colors.purple;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: spacing,),
      child: RaisedButton(

        elevation: 0.0,
        color: buttoncolor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(radius)),
        onPressed: () { Navigator.pushNamed(context, pageRoute);},


          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

            ListTile(

              leading: Icon(serviceIcon),
                title: Text(serviceName),
            ),
            ],
          ),

      ),
    );
  }

}