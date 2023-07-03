import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/font_size.dart';

class AppBarTraking extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Widget carousal;
  AppBarTraking({
    required this.context,
    required this.carousal,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 4 +
            (MediaQuery.of(context).size.height / 18),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_home_bar.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
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
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'متابعة سير الباص حاليا',
                    style: TextStyle(
                        fontSize: AppFontSize.hintText,
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon:
                      const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onPressed: () {}),
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
          topBar,
          Positioned(
              top: (MediaQuery.of(context).size.height / 4) / 1.3,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              child: carousal),
          // if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 7));

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 7));

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
