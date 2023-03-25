import 'package:browser_12/Screen/Botom_Screen/Botom_Screen.dart';
import 'package:browser_12/Screen/Home_Screen/Provider/Home_Provider.dart';
import 'package:browser_12/Screen/Home_Screen/View/Home_Page.dart';
import 'package:browser_12/Screen/Home_Screen/View/Titel_Page.dart';
import 'package:browser_12/Screen/Home_Screen/View/Other_App.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => HomeProvider())],
    child: Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => BottomPage(),
            'home': (context) => Home_Page(),
            'app': (context) => Other_App(),
            'acco':(context) => My_Account(),
          },
        );
      },
    ),
  ));
}
