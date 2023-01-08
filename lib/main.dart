import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:googleads/home_screen.dart';
import 'package:googleads/splesh_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'sp',
      routes: {
        '/':(context)=>Home_Screen(),
        'sp':(context)=>Splesh_Screen(),
      },
    )
  );
}
