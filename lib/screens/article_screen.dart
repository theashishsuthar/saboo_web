import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saboo_web/routes/routes.dart';
import 'package:saboo_web/textstyle/textstyle.dart';
import 'package:saboo_web/widgets/side_navigation.dart';
import 'package:sizer/sizer.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(RouteClass.getaddArticleScreen());
        },
        label: const Text('+ Add Article'),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: SideNavigation(size: size),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            height: size.height * 0.1,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Your Articles',
                style: welcome.copyWith(decoration: TextDecoration.underline),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    height: size.height * 0.3,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp),
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey[200]!)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SomeWhere On the Earth...',
                            style: articleTitle,
                          ),
                          SizedBox(
                            height: 1.sp,
                          ),
                          Text(
                            'This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !! This is the random jokes where to find this type of nonsens ejoke s i am also free for you guys i am very kind and humble guy i also request to everyone to be humble and dont\'t leave without any strong reason it will hit you very hard remember my words ok then read my blogs daily !!',
                            style: articledesc,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Posted ago 2 Days',
                                  style: articlepost,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed(
                                        RouteClass.getsingleArticleScreen());
                                  },
                                  child: Text(
                                    'Read More...',
                                    style: readmore,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
