import 'package:get/get.dart';
import '../HomeScreen.dart';
import 'Aboutdis.dart';
import 'Aboutnew.dart';
import 'Aboutnew3.dart';
import 'pro.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

/* import 'Aboutdis.dart';
import 'Aboutcom.dart'; */

class About2 extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bottomPadding = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: Color(0xffA2D43D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff202020)),
        title: Text(
          'about'.tr,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                ProductDisplay(),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                  child: Text(
                    'cannabis split'.tr,
                    style: const TextStyle(
                        color: const Color(0xFFFEFEFE),
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 90,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 600),
                                  reverseDuration: Duration(milliseconds: 600),
                                  child: Aboutnew())),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffA2D43D)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(color: Colors.white),
                              ))),
                          child: Row(
                            children: <Widget>[
                              Text('det'.tr,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border:
                              Border.all(color: Color(0xFFFFFFFF), width: 5),
                        ),
                        child: Center(
                          child: Text("medic".tr,
                              style: const TextStyle(
                                  color: const Color(0xffA2D43D),
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 600),
                                  reverseDuration: Duration(milliseconds: 600),
                                  child: About3())),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffA2D43D)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(color: Colors.white),
                              ))),
                          child: Row(
                            children: <Widget>[
                              Text('ano'.tr,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18))
                            ],
                          ),
                        ),
                      ),
                      /* Container(
                        width: 120,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffA2D43D),
                          borderRadius: BorderRadius.circular(8.0),
                          border:
                              Border.all(color: Color(0xFFFFFFFF), width: 5),
                        ),
                        child: Center(
                          child: Text("ano".tr,
                              style: TextStyle(
                                color: Color(0xeefefefe),
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                              )),
                        ),
                      ) */
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 40.0, bottom: 130),
                    child: Text("aboutmedic".tr,
                        style: const TextStyle(
                            color: const Color(0xfefefefe),
                            fontWeight: FontWeight.w800,
                            fontFamily: "NunitoSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0)))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
