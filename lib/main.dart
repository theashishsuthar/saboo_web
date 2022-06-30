import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saboo_web/controllers/dropdowncontroller.dart';
import 'package:saboo_web/controllers/filepicker.dart';
import 'package:saboo_web/controllers/quoteController.dart';
import 'package:saboo_web/controllers/signupController.dart';

import 'package:saboo_web/routes/routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final fileController = Get.put(FilePickerController());
  final signUpController = Get.put(SignUpController());
  final dropdownController = Get.put(DropdownController());
  final quoteController = Get.put(QuoteController());

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SabooWeb',
          themeMode: ThemeMode.light,
          theme: ThemeData(
              primaryColor: Colors.purple,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.purple,
                splashColor: Colors.white.withOpacity(0.1),
              )),
          initialRoute: RouteClass.signupScreen,
          getPages: RouteClass.routes,
        );
      }),
    );
  }
}
