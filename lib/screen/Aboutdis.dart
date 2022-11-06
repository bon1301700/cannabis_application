import 'pro.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 20,
            bottom: 20,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.7,
              height: 250,
              padding: EdgeInsets.only(right: 24),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 3),
                        blurRadius: 50.0),
                  ]),
            )),
        Align(
          alignment: Alignment(-1, 0),
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Container(
              height: 220,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 18.0,
                    ),
                    child: Container(
                      child: DropShadow(
                        blurRadius: 1.75,
                        offset: const Offset(10, 10),
                        spread: 0.5,
                        child: Image.asset(
                          "assets/images/canabisss.png",
                          width: 550,
                          height: 550,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
