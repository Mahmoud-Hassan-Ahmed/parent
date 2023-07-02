import 'dart:math';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/font_size.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // Container(
          //   child: Text("asd"),
          // ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                            const Text(''),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  backgroundColor: AppColors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ), // Adjust the radius value as needed
                                  ),
                                ),
                                child: Text(
                                  "طلب غياب",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cairo',
                                      fontSize: AppFontSize.smallText + 3,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '6-11-2022',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'من',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '6-11-2022',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'الي',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  )
                                ],
                              ),
                              Text(
                                'نوع الرحلة : الكل',
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.hintText,
                                    color: AppColors.smallText),
                              )
                            ],
                          ),
                        ),
                        Image.asset('assets/images/note.png')
                      ],
                    )),
                Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                            const Text(''),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  backgroundColor: AppColors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ), // Adjust the radius value as needed
                                  ),
                                ),
                                child: Text(
                                  "طلب غياب",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cairo',
                                      fontSize: AppFontSize.smallText + 3,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '6-11-2022',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'من',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '6-11-2022',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'الي',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: AppFontSize.hintText,
                                        color: AppColors.smallText),
                                  )
                                ],
                              ),
                              Text(
                                'نوع الرحلة : الكل',
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.hintText,
                                    color: AppColors.smallText),
                              )
                            ],
                          ),
                        ),
                        Image.asset('assets/images/note.png')
                      ],
                    )),
                Expanded(child: Image.asset('assets/images/add.png'))
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                      child: Text(
                    'الطلبات السابقة',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintFormField,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    ' الطلبات الحالية ',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintFormField,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            )
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
