import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ads_screen.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({Key? key}) : super(key: key);

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {

  @override
  void initState() {
    super.initState();
     openAds();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (appOpenAd != null) {
      print("================================================ ");
      appOpenAd!.show();
    } else {
      print("================================================ >>>> ");
    }
  }

  List img=["assets/icons/spimg.png"];

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6), () {
      if (appOpenAd != null) {
        print("================================================ ");
        appOpenAd!.show();
      }
      Navigator.pushReplacementNamed(context, '/');
    }
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
               height: 732,
               width: 500,
               child: Image.asset("assets/icons/spimg.png",fit: BoxFit.fill,),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
