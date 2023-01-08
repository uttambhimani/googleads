import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:googleads/ads_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    super.initState();
    bannerAds();
    interAds();
    rewardAds();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Google Ads"),
          centerTitle: true,
        ),
        body: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: AdWidget(ad: bannerAd!),
                ),
                ElevatedButton(onPressed: (){
                 if(interstitialAd != null){

                   interstitialAd!.show();
                   interAds();
                 }

                }, child: Text("InterAds")),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  if(rewardedAd != null){
                    rewardedAd!.show(onUserEarnedReward: (ad, reward){

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${reward.amount}")));
                    });
                    rewardAds();
                  }

                }, child: Text("RewarAds")),

                ElevatedButton(onPressed: (){

                  if(appOpenAd != null){

                    appOpenAd !.show();
                  }
                  else
                    {
                      print("==============");
                    }
                }, child: Text("oppen Ad")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

