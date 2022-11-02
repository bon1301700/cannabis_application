import 'package:cannabis_aplication/ui/local_screen.dart';
import 'package:flutter/material.dart';
import 'screen/About.dart';
import 'screen/Cure.dart';
import 'screen/Scan.dart';
import 'package:get/get.dart';
import 'package:cannabis_aplication/ui/camera_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ภาษาไทย', 'locale': Locale('th', 'TH')},
  ];

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
              title: Text('lang'.tr),
              content: Container(
                  width: double.maxFinite,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: () {
                                print(locale[index]['name']);
                                updatelanguage(locale[index]['locale']);
                              },
                              child: Text(locale[index]['name'])),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: locale.length)));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text(
          'title'.tr,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 4, 99, 8),
                      Colors.lightGreenAccent,
                    ],
                  )),
                  child: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 15, 40, 0),
                              child: Column(children: [
                                Image.asset(
                                  "assets/images/kulogo.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'mycannabis'.tr,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 24,
                                  ),
                                ),
                              ]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 4, 99, 8),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Image.asset(
                                        "assets/images/canabisss.png",
                                        width: 150,
                                        height: 150,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 60, 0),
                                        child: Text(
                                          'species'.tr,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFFAFAFA),
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      builddialog(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(375, 40),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.language),
                                        Text('changelang'.tr,
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                About())),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(375, 40),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.app_registration),
                                        Text('about'.tr,
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Cure())),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(375, 40),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.medical_services_outlined),
                                        Text('treat'.tr,
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(45, 15, 0, 0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LocalScreen())),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(375, 40),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.image_search_rounded),
                                        Text('picture'.tr,
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  80, 30, 110, 0),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () => Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CameraScreen(),
                                    )),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(130, 80),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.camera_alt),
                                        Text('sc'.tr,
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))),
      ),
    );
  }
}
