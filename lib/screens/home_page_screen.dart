import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../textstyle/textstyle.dart';
import '../widgets/main_content.dart';
import '../widgets/side_navigation.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool sidebarisopen = false;

  double xoffset = 0.0;
  double yoffset = 30;

  void sidebarstate() {
    setState(() {
      xoffset = sidebarisopen ? 265 : 30;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: SideNavigation(size: size),
      body: Stack(children: [
        MainContent(size: size),
      ]),
    );
  }
}
