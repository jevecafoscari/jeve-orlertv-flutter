import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/interface/pages/contact_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/home_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/who_page.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/homeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text(
          References.appName.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        gradient: References.appBarGradient,
        centerTitle: true,
      ),
      body: buildBody(),
      drawer: buildDrawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.phone),
        onPressed: () {},
      ),
    );
  }

  Widget buildBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        const HomePage(),
        ContactPage(),
        WhoPage(),
      ],
    );
  }

  static const TextStyle drawerOptionsTextStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w400);

  Widget buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 5 * 2,
      child: Column(
        children: [
          SizedBox(
            height: AppBar().preferredSize.height + MediaQuery.of(context).viewPadding.top,
          ),
          Expanded(
            child: Drawer(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: Images.splashWallpaper,
                    fit: BoxFit.cover,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                  Column(
                    children: [
                      ListTile(
                        title: const Text("Home", style: drawerOptionsTextStyle),
                        onTap: () => goToPage(0),
                      ),
                      ListTile(
                        title: const Text("Contatti", style: drawerOptionsTextStyle),
                        onTap: () => goToPage(1),
                      ),
                      ListTile(
                        title: const Text("Chi siamo", style: drawerOptionsTextStyle),
                        onTap: () => goToPage(2),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(image: Images.logo),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
