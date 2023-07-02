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
                Expanded(
                    child: Container(
                        //map
                        )),
                //map
                Card(
                  elevation: 6.0,
                  color: Colors.green,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Column(
                          children: [
                            Text('الباص متجه إلي المنزل',
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.hintFormField,
                                    color: Colors.green)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'رحلة العودة للمنزل',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: AppFontSize.hintText,
                                      color: AppColors.smallText),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.location_city,
                                  color: AppColors.smallText,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'الوقت المتبقي 6د',
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: AppFontSize.hintFormField,
                                          color: AppColors.smallText),
                                    ),
                                    Icon(Icons.alarm)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'الوقت المتبقي 6د',
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: AppFontSize.hintFormField,
                                          color: AppColors.smallText),
                                    ),
                                    Icon(Icons.alarm)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        )),
                  ),
                )
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
              'رحلات الأبناء',
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
