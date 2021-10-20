import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/interface/pages/contact_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/home_page.dart';
import 'package:jeve_orlertv_flutter/interface/pages/who_page.dart';
import 'package:jeve_orlertv_flutter/interface/widget/fullscreen_video_player.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:jeve_orlertv_flutter/resources/helper/launch_helper.dart';
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
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        switch (orientation) {
          case Orientation.landscape:
            return FullscreenVideoPlayer();
          case Orientation.portrait:
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
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: References.appBarGradient,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(pageIndex == 0 ? Icons.phone : Icons.tv),
                  ),
                ),
                onPressed: () {
                  switch (pageIndex) {
                    case 0:
                      LaunchHelper.callPhone(References.phoneNumber);
                      break;
                    default:
                      goToPage(0, false);
                  }
                },
              ),
            );
        }
      },
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

  static const TextStyle drawerOptionsTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w400);

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
                    image: Images.drawerBackground,
                    fit: BoxFit.cover,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                  SafeArea(
                    top: false,
                    child: Column(
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void goToPage(int index, [bool pop = true]) {
    switch (index) {
      case 0:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
        break;
      default:
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
        break;
    }

    setState(() => pageIndex = index);
    if (pop) Navigator.of(context).pop();
  }
}
