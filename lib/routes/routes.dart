import 'package:get/get.dart';
import 'package:saboo_web/screens/add_article_screen.dart';
import 'package:saboo_web/screens/article_screen.dart';
import 'package:saboo_web/screens/sign_up_screen.dart';
import 'package:saboo_web/screens/single_article_screen.dart';

import '../screens/home_page_screen.dart';

class RouteClass {
  static String homeScreen = '/';
  static String articlescreen = '/article-screen';
  static String singleArticleScreen = '/single-article-screen';
  static String addArticleScreen = '/addArticleScreen';
  static String signupScreen = '/signupscreen';
  //
  static String gethomeScreen() => homeScreen;
  static String getarticleScreen() => articlescreen;
  static String getsingleArticleScreen() => singleArticleScreen;
  static String getaddArticleScreen() => addArticleScreen;
  static String getsignupScreen() => signupScreen;

  static List<GetPage> routes = [
    GetPage(
      name: homeScreen,
      page: () => const HomePageScreen(),
    ),
    GetPage(
      name: articlescreen,
      page: () => const ArticleScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: singleArticleScreen,
      page: () => const SingleArticleScreen(),
    ),
    GetPage(
      name: addArticleScreen,
      page: () => const AddArticleScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: signupScreen,
      page: () =>  SignUpScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
