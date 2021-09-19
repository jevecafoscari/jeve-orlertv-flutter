import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/pages/contact_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/home_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/who_page.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(References.appName)),
      body: buildBody(),
      drawer: buildDrawer(),
    );
  }

  Widget buildBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        ContactPage(),
        WhoPage(),
      ],
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                "Orler: gallerie d\'arte dal 1958",
                style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://www.orler.it/orlertv/wp-content/uploads/2015/01/65_Vasarely-Victor-180x180-1969.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              ListTile(
                title: const Text("Home"),
                onTap: () => goToPage(0),
              ),
              ListTile(
                title: const Text("Contatti"),
                onTap: () => goToPage(1),
              ),
              ListTile(
                title: const Text("Chi siamo"),
                onTap: () => goToPage(2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void goToPage(int index) {
    setState(() => pageIndex = index);
    Navigator.of(context).pop();
  }
}
