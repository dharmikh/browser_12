import 'package:browser_12/Screen/Home_Screen/Provider/Home_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

class My_Account extends StatefulWidget {
  const My_Account({Key? key}) : super(key: key);

  @override
  State<My_Account> createState() => _My_AccountState();
}

class _My_AccountState extends State<My_Account> {
  HomeProvider? providert;
  HomeProvider? providerf;

  @override
  Widget build(BuildContext context) {
    providerf = Provider.of<HomeProvider>(context, listen: false);
    providert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${providert!.Aplication[providert!.j].name}"),
        ),
        body: Column(
          children: [
            providert!.progress2 == 1.0
                ? Text("not found")
                : LinearProgressIndicator(
                    value: providert!.progress2,
                    color: Colors.red,
                    backgroundColor: Colors.white,
                  ),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("${providert!.Aplication[providert!.j].url}"),
                ),
                onProgressChanged: (controller, progress) {
                  providerf!.Chnage2(progress);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
