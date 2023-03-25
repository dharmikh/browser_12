import 'package:browser_12/Screen/Home_Screen/Provider/Home_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  HomeProvider? ProviderTrue;
  HomeProvider? ProviderFalse;

  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    ProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: ProviderTrue!.Page[ProviderTrue!.i],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            ProviderTrue!.Index(index);
          },
          currentIndex: ProviderTrue!.i,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.app_registration,
                ),
                label: "Apps"),

          ],
        ),
      ),
    );
  }
}
