import 'package:browser_12/Screen/Home_Screen/Provider/Home_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Other_App extends StatefulWidget {
  const Other_App({Key? key}) : super(key: key);

  @override
  State<Other_App> createState() => _Other_AppState();
}

class _Other_AppState extends State<Other_App> {
  HomeProvider? providert;
  HomeProvider? providerf;

  @override
  Widget build(BuildContext context) {
    providert = Provider.of<HomeProvider>(context, listen: true);
    providerf = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Other App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text("More Apps"),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 73.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                  EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: providert!.videoApp.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            providert!.show(index, providert!.videoApp);
                            Navigator.pushNamed(context, 'acco');
                          },
                          child: ListTile(
                            leading: Image.asset(
                              "${providert!.videoApp[index].image}",
                              width: 20.w,
                            ),
                            // title:,
                            title: Text(
                              "${providert!.videoApp[index].name}",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            // Text("Hello"),
            // Expanded(
            //   child: Container(
            //     height: 50.h,
            //     child: ListView.builder(
            //       itemCount: providert!.videoApp.length,
            //       itemBuilder: (context, index) {
            //         return ListTile(
            //           leading: Image.asset(
            //             "${providert!.videoApp[index].image}",
            //             width: 20.w,
            //           ),
            //           // title:,
            //           subtitle: Text("${providert!.videoApp[index].name}"),
            //         );
            //       },
            //     ),
            //   ),
            // ),
            // Text("Hello"),
            // Expanded(
            //   child: Container(
            //     height: 50.h,
            //     child: ListView.builder(
            //       itemCount: providert!.newsApp.length,
            //       itemBuilder: (context, index) {
            //         return ListTile(
            //           leading: Image.asset(
            //             "${providert!.newsApp[index].image}",
            //             width: 20.w,
            //           ),
            //           // title:,
            //           subtitle: Text("${providert!.newsApp[index].name}"),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
