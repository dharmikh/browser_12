import 'package:browser_12/Screen/Home_Screen/Provider/Home_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  HomeProvider? providert;
  HomeProvider? providerf;

  @override
  Widget build(BuildContext context) {
    providerf = Provider.of<HomeProvider>(context, listen: false);
    providert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            height: 7.h,
            width: 160.w,
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                     providert!.inAppWebViewController!.goBack();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 3.w,
                ),
                InkWell(
                    onTap: () {
                      providert!.inAppWebViewController!.goForward();
                    },
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.black,
                    )),
                Expanded(
                  child: TextField(
                    onSubmitted: (value) {
                      providert!.inAppWebViewController!.loadUrl(
                          urlRequest: URLRequest(
                              url: Uri.parse(
                                  "https://www.google.com/search?q=$value")));
                    },
                    controller: providert!.txtSearch,
                    decoration: InputDecoration(
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: InAppWebView(
          initialUrlRequest:
              URLRequest(url: Uri.parse("https://www.google.com/")),
          onWebViewCreated: (controller) {
            providerf!.ChnageController(controller);
          },
          onProgressChanged: (controller, progress) {
            providerf!.ChnageProgress(progress / 100);
          },
        ),
      ),
    );
  }
}
