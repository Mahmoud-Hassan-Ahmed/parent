import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class AppBarWithTitle extends SliverPersistentHeaderDelegate {
  late double minTopBarHeight = MediaQuery.of(context).size.height / 9;
  late double maxTopBarHeight = MediaQuery.of(context).size.height / 6;
  final String title;
  final String? bg;
  final BuildContext context;
  final Function callBack;

  AppBarWithTitle(
      {required this.context,
      required this.title,
      required this.callBack,
      this.bg});

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
        decoration: BoxDecoration(
            color: AppColors.smallTextColor,
            image: bg != null
                ? DecorationImage(
                    image: AssetImage(bg ?? ''),
                    fit: BoxFit.cover,
                  )
                : null,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26),
            )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.titleFont - 4),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    callBack.call();
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
    return SizedBox(
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
  double get maxExtent => MediaQuery.of(context).size.height / 6;

  @override
  double get minExtent => MediaQuery.of(context).size.height / 9;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
