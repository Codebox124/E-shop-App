import 'package:e_shop/screens/home.dart';
import 'package:e_shop/utils/colors.dart';
import 'package:e_shop/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

import '../utils/title_style.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10,
            left: -150,
            child: Row(children: [
              ImageList(startIndex: 0),
              ImageList(startIndex: 1),
              ImageList(startIndex: 2),
            ]),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Text(
              'CodeBox',
              style: kTitleStyle,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.white60,
                  Colors.white,
                  Colors.white,
                ], begin: Alignment.topCenter, end: Alignment.center),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Appearance \n Shows Your Quality",
                    style: kNormalStyle.copyWith(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Change The Quality Of Year \n Appearance with Codebox",
                    style: kNormalStyle.copyWith(
                        color: Colors.grey,
                        height: 1.5,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicator(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            left: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: BackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("Sign Up with Email")),
            ),
          )
        ],
      ),
    );
  }
}
