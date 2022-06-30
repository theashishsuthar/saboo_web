import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../textstyle/textstyle.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 1,
      color: Colors.grey[100],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20.h,
              width: size.width * 1,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.sp,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Welcome,',
                            style: welcome,
                          ),
                          SizedBox(
                            width: 0.3.w,
                          ),
                          Text(
                            'EquitySoft',
                            style: welcome,
                          ),
                          SizedBox(
                            width: 0.2.w,
                          ),
                          Text(
                            '🎉',
                            style: welcome,
                          ),
                        ],
                      ),
                      Text(
                        'See what is the status of your Blog Today !',
                        style: wcsubtitle,
                      ),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.sp),
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: ViewCount(
                          icon: Icons.remove_red_eye,
                          numbers: '100',
                          perday: 'Per Day',
                          views: 'Views'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: ViewCount(
                          icon: Icons.timer,
                          numbers: '5000',
                          perday: 'Per minutes',
                          views: 'Visits'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                        right: 5.w,
                      ),
                      child: ViewCount(
                          icon: Icons.receipt,
                          numbers: '200',
                          perday: 'Per Day',
                          views: 'Daily Readers'),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewCount extends StatelessWidget {
  const ViewCount({
    Key? key,
    required this.icon,
    required this.numbers,
    required this.perday,
    required this.views,
  }) : super(key: key);

  final IconData icon;
  final String views;
  final String numbers;
  final String perday;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.w),
          child: CircleAvatar(
            maxRadius: 7.sp,
            backgroundColor: Colors.grey[400],
            child: Center(
                child: Icon(
              icon,
              color: Colors.black,
              size: 30,
            )),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          views,
          style: view,
        ),
        Text(
          numbers,
          style: number,
        ),
        Expanded(
            child: Text(
          perday,
          style: view,
        )),
      ],
    );
  }
}
