import 'package:browser_12/Screen/Home_Screen/Model/Home_Model.dart';
import 'package:browser_12/Screen/Home_Screen/View/Home_Page.dart';
import 'package:browser_12/Screen/Home_Screen/View/Other_App.dart';
import 'package:browser_12/Screen/Home_Screen/View/Titel_Page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomeProvider extends ChangeNotifier {
  List Page = [
    Home_Page(),
    Other_App(),
    My_Account(),
  ];
  TextEditingController txtSearch = TextEditingController();
  InAppWebViewController? inAppWebViewController;
  int i = 0;

  void Index(ind) {
    i = ind;
    notifyListeners();
  }

  int j = 0;
  List<Home_Model> Aplication = [];

  void show(index, select) {
    j = index;
    Aplication = select;
    notifyListeners();
  }

  double progress2 = 0.0;
  void Chnage2(prg)
  {
    progress2 = prg;
    notifyListeners();
  }

  void ChnageController(com) {
    inAppWebViewController = com;
    notifyListeners();
  }

  double progress = 0.0;

  void ChnageProgress(prg) {
    progress = prg;

    notifyListeners();
  }

  List<Home_Model> videoApp = [
    Home_Model(
        name: "YouTube",
        image: "assets/image/youtube.png",
        url: "https://www.youtube.com/"),
    Home_Model(
        name: "HotStar",
        image: "assets/image/hotstar.jpg",
        url: "https://www.hotstar.com/in"),
    Home_Model(
        name: "Netflix",
        image: "assets/image/netflix.png",
        url: "https://www.netflix.com/in/"),
    Home_Model(
        name: "Sony LIV",
        image: "assets/image/sonyliv.png",
        url: "https://www.sonyliv.com/"),
    Home_Model(
        name: "Instagram",
        image: "assets/image/instagram.webp",
        url: "https://www.instagram.com/?hl=en"),
    Home_Model(
        name: "WhatsApp",
        image: "assets/image/whatsapp.png",
        url: "https://www.whatsapp.com/"),
    Home_Model(
        name: "Facebook",
        image: "assets/image/faebook.png",
        url: "https://www.facebook.com/"),
    Home_Model(
        name: "Twitter",
        image: "assets/image/twitter.webp",
        url: "https://twitter.com/"),
    Home_Model(
        name: "Divya Bhaskar",
        image: "assets/image/divya.png",
        url: "https://www.divyabhaskar.co.in/"),
    Home_Model(
        name: "Aaj Tak",
        image: "assets/image/aaj tak.png",
        url: "https://www.aajtak.in/"),
    Home_Model(
        name: "Zee News",
        image: "assets/image/z_news.jpg",
        url: "https://zeenews.india.com/"),
    Home_Model(
        name: "Google News",
        image: "assets/image/google_news.png",
        url: "https://news.google.com/"),
    Home_Model(
        name: "Amazon",
        image: "assets/image/amazon.jpg",
        url: "https://www.amazon.in/"),
    Home_Model(
        name: "FlipKart",
        image: "assets/image/flipkard.jpg",
        url: "https://www.flipkart.com/"),
    Home_Model(
        name: "Meesho",
        image: "assets/image/Meesho.webp",
        url: "https://www.meesho.com/"),
    Home_Model(
        name: "Shopsy",
        image: "assets/image/shopsy.jpg",
        url: "https://www.shopsy.in/"),
  ];
}
