import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:request_information/widgets/servicepanel.dart';



class CMO extends StatefulWidget {
  @override
  _CMOState createState() => _CMOState();
}

class _CMOState extends State<CMO> with TickerProviderStateMixin {

  TabController _tcontrol;

  void initState() {
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.indigo[50],
          appBar: GradientAppBar(
            title: FittedBox(fit:BoxFit.fitWidth,
              child: Text('Office of the City Mayor')
            ),
            centerTitle: true,

            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),

            leading: Builder(
              builder: (BuildContext context1) {
                return IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              },
            ),

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3.15,) ,
              child: Column(
                children: <Widget>[
                  CarouselImages(
                    image1: "images/sample1.jpg",
                    image2: "images/sample2.jpg",
                    image3: "images/sample3.jpg",
                  ),
                  TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.purple,
                    controller: _tcontrol,
                    tabs: <Widget>[
                      Tab(child: Text("JOB LISTS", style: TextStyle(color: Colors.white),)),
                      Tab(child: Text("SAVED JOBS",style: TextStyle(color: Colors.white),)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          body: TabBarView(
            children: <Widget>[
              AboutTab(
                aboutOffice:"Job desription here",
                contactOffice:"09545390663",
                websiteOffice: "www.linkhere.com",
              ),
              ServicesTab(),
            ],
            controller: _tcontrol,
          ),

        )
    );
  }
}

class AboutTab extends StatelessWidget {

  AboutTab({ this.aboutOffice, this.contactOffice, this.websiteOffice});


  final String aboutOffice;
  final String contactOffice;
  final String websiteOffice;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Card(child: Text("Hello"),),
          Card(child: Text("Hello"),),
          Card(child: Text("Hello"),),
        ],
      ),
    );

  }
}

class ServicesTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[

              ServicePanel(
                serviceName: "saved job 1",
                serviceImage: "images/sample1.jpg",
                aboutService: "HOHAHAHAHAHA",
              ),

              ServicePanel(
                serviceName: "saved job 2",
                serviceImage: "images/sample2.jpg",
                aboutService: """
                *heeeeey*
                """,
              ),

              ServicePanel(
                serviceName: "saved job 3",
                serviceImage: "images/sample3.jpg",
                aboutService: "HOHAHAHAHAHA",
              ),


            ],
          ),
        )
    );
  }
}

class CarouselImages extends StatelessWidget {

  CarouselImages({this.image1, this.image2, this.image3,});

  final String image1;
  final String image2;
  final String image3;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Carousel(
              images: [
                AssetImage(image1),
                AssetImage(image2),
                AssetImage(image3),
              ],
              dotSize: 5.0,
              dotSpacing: 15.0,
              indicatorBgPadding: 10.0,
              autoplay: false,
              dotBgColor: Colors.purple.withOpacity(0.0),
            )
        ),
      ],
    );
  }
}




