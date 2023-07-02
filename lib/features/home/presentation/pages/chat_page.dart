import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        color: AppColors.bgSendMessage,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                  angle: 230 *
                      3.1415926535 /
                      180, // Convert 270 degrees to radians
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'اكتب رسالة …',
                    hintStyle: TextStyle(
                        fontSize: AppFontSize.hintFormField,
                        color: AppColors.hint,
                        fontFamily: 'Cairo')),
              ),
            ))
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SearchHeader(
              title: 'Trees',
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/parent.png'),
                        radius: 20.0,
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                            style: TextStyle(
                              fontSize: AppFontSize.smallText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                            style: TextStyle(
                              fontSize: AppFontSize.smallText,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        radius: 20.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(' 3:45pm ,30/11/2022',
                      style: TextStyle(
                          fontSize: AppFontSize.hintText - 2,
                          color: AppColors.bgSendMessage,
                          fontFamily: 'Cairo')),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/parent.png'),
                        radius: 20.0,
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                            style: TextStyle(
                              fontSize: AppFontSize.smallText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            'تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة تفاصيل الرسالة ',
                            style: TextStyle(
                              fontSize: AppFontSize.smallText,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        radius: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 200;
  final String title;

  SearchHeader({
    required this.title,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'شات مع المشرف',
              style: TextStyle(
                  fontSize: AppFontSize.smallText * 2,
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
      ),
    );
    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
