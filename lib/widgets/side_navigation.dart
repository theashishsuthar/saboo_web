import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saboo_web/routes/routes.dart';
import 'package:sizer/sizer.dart';

import '../textstyle/textstyle.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: size.width * 0.20,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.only(
            left: 2.w,
            right: 2.w,
          ),
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Column(children: [
              Container(
                height: size.height * 0.15,
                width: size.width * 0.20,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Saboo',
                    style: sabootxt.copyWith(fontSize: 8.sp),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.sp, left: 1.sp),
                      child: Text('DashBoard',
                          style: dashtxt.copyWith(
                            fontSize: 3.sp,
                          )),
                    ),
                  ),
                ]),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                height: 0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Menu',
                  style: dashtxt.copyWith(
                    fontSize: 3.sp,
                  ),
                ),
              ),
              ListTile(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                onTap: () {
                  Get.toNamed(RouteClass.gethomeScreen());
                },
                title: Text(
                  'DashBoard',
                  style: navigation,
                ),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                onTap: () {
                  Get.toNamed(RouteClass.getarticleScreen());
                },
                title: Text(
                  'Your Articles',
                  style: navigation,
                ),
                leading: Icon(
                  Icons.article,
                  color: Colors.white,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                onTap: () {},
                title: Text(
                  'Business Idea',
                  style: navigation,
                ),
                leading: Icon(
                  Icons.handshake,
                  color: Colors.white,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                onTap: () {},
                title: Text(
                  'Daily Quotes',
                  style: navigation,
                ),
                leading: Icon(
                  Icons.lightbulb,
                  color: Colors.white,
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0,
                height: 0,
              ),
            ]),
            Bottom(),
          ]),
        ),
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PROFILE',
            style: dashtxt.copyWith(
              fontSize: 3.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807__340.png'),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'EquitySoft',
                          style: username.copyWith(fontSize: 3.sp),
                        ),
                        Text(
                          'Super Admin',
                          style: userprofession.copyWith(fontSize: 3.sp),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                    size: 5.sp,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.white24,
                fixedSize: Size(25.w, 7.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white70,
            ),
            label: Text(
              'Log Out',
              style: logout,
            ),
          ),
        ],
      ),
    );
  }
}
