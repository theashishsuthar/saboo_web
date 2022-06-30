import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saboo_web/widgets/side_navigation.dart';
import 'package:sizer/sizer.dart';

import '../textstyle/textstyle.dart';

class SingleArticleScreen extends StatefulWidget {
  const SingleArticleScreen({Key? key}) : super(key: key);

  @override
  State<SingleArticleScreen> createState() => _SingleArticleScreenState();
}

class _SingleArticleScreenState extends State<SingleArticleScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: SideNavigation(size: size),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(82, 41, 171, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: Column(children: [
            //title
            Align(
              alignment: Alignment.center,
              child: Text(
                'SomeWhere on the Earth...',
                style: blogtitle,
              ),
            ),

            //blog desc
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              child: Text(
                'This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!',
                style: blogdesc,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              width: size.width * 0.9,
              height: size.height * 0.6,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/07/28/21/58/student-865073__340.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              child: Text(
                'This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!',
                style: blogdesc,
                textAlign: TextAlign.justify,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
