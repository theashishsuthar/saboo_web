import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:saboo_web/controllers/signupController.dart';
import 'package:saboo_web/routes/routes.dart';
import 'package:saboo_web/textstyle/textstyle.dart';
import 'package:saboo_web/widgets/logger.dart';

import '../widgets/background_img.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signupController = Get.find<SignUpController>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final mobileNumController = TextEditingController();

  final passwordController = TextEditingController();

  final adminemailController = TextEditingController();
  final adminpasswordController = TextEditingController();

  var obscure = true;

  void changepasswordVisibility() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //controllers
    signupController.dispose();
    nameController.dispose();
    emailController.dispose();
    mobileNumController.dispose();
    passwordController.dispose();
    adminemailController.dispose();
    adminpasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = Get.size;
    return OKToast(
      backgroundColor: Colors.red,
      position: ToastPosition.bottom,
      duration: Duration(seconds: 3),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(alignment: Alignment.topRight, children: [
          BackgroundImg(size: size),
          Container(
            margin: EdgeInsets.all(20),
            width: size.height * 0.3,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: themecolor.withOpacity(0.9),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.width * 0.035),
                  bottomLeft: Radius.circular(size.width * 0.035),
                  bottomRight: Radius.circular(size.width * 0.035)),
            ),
            child: Column(children: [
              Spacer(
                flex: 1,
              ),
              Text(
                'Admin Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.016,
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (context) {
                        var adminobscure = true;
                        void adminchangepasswordVisibility() {
                          setState(() {
                            adminobscure = !adminobscure;
                          });
                        }

                        return AlertDialog(
                          insetPadding:
                              EdgeInsets.only(top: size.height * 0.05),
                          title: Text('Admin Login'),
                          content: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.005),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    controller: adminemailController,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      hintText: 'Enter Email Address',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    obscureText: true,
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.visiblePassword,
                                    controller: adminpasswordController,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          adminobscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: adminobscure
                                              ? Colors.blue
                                              : Colors.black38,
                                        ),
                                        onPressed:
                                            adminchangepasswordVisibility,
                                      ),
                                      labelText: 'Password',
                                      hintText: 'Enter Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () async {
                                Get.back();
                              },
                              child: Text(
                                'CANCEL',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                if (adminemailController.text.isEmpty) {
                                  showToast('Please Enter Email');
                                  return;
                                }
                                if (!adminemailController.text.contains('@')) {
                                  showToast('Please Enter Valid Email Address');
                                  return;
                                }

                                if (adminpasswordController.text.isEmpty) {
                                  showToast('Please Enter Password');
                                  return;
                                }
                                signupController.adminLogin(
                                  adminemailController.text.trim(),
                                  adminpasswordController.text.trim(),
                                );
                                await Get.toNamed(RouteClass.gethomeScreen());
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: const Text(
                  'CLICK HERE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(),
            ]),
          ),
          Center(
            child: Container(
              height: size.height * 0.8,
              width: size.height * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        bottom: size.height * 0.07,
                      ),
                      child: CircleAvatar(
                        maxRadius: size.width * 0.03,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425__340.png',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.015),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'UserName',
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.015),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.015),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        controller: mobileNumController,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          hintText: 'Enter Your Mobile Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.015),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        controller: passwordController,
                        obscureText: obscure ? true : false,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscure ? Icons.visibility_off : Icons.visibility,
                              color: obscure ? Colors.blue : Colors.black38,
                            ),
                            onPressed: changepasswordVisibility,
                          ),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.05),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: themecolor,
                          fixedSize: Size(
                            size.width * 0.09,
                            size.height * 0.05,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () async {
                          if (nameController.text.isEmpty) {
                            showToast('Please Enter Your Name');
                            return;
                          }
                          if (emailController.text.isEmpty) {
                            showToast('Please Enter Email');
                            return;
                          }
                          if (!emailController.text.contains('@')) {
                            showToast('Please Enter Valid Email Address');
                            return;
                          }
                          if (mobileNumController.text.isEmpty) {
                            showToast('Please Mobile Number');
                            return;
                          }
                          if (passwordController.text.isEmpty) {
                            showToast('Please Enter Password');
                            return;
                          }

                          logger.i(nameController.text);
                          logger.i(emailController.text);
                          logger.i(mobileNumController.text);
                          logger.i(passwordController.text);
                          signupController.signup(
                            nameController.text,
                            emailController.text.trim(),
                            mobileNumController.text.trim(),
                            passwordController.text.trim(),
                          );
                        },
                        child: Text('SignUp'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already Have an Account ?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        TextButton(
                          onPressed: () async {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
