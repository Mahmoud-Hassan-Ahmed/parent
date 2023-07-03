import 'dart:math';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class AppBarMore extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Function callBack;
  AppBarMore({required this.context, required this.callBack});

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
        height: MediaQuery.of(context).size.height / 3,
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "",
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
          topBar,
          Positioned(
              top: (MediaQuery.of(context).size.height / 4) / 1.5,
              left: (MediaQuery.of(context).size.width / 3) / 4,
              width: (MediaQuery.of(context).size.width / 3) * 2.5,
              height: MediaQuery.of(context).size.height / 3,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'اسم ولي الأمر',
                              style: TextStyle(
                                  fontSize: AppFontSize.hintFormField,
                                  fontFamily: 'Cairo',
                                  color: AppColors.smallText,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/images/user2.png'),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        indent: 10,
                        color: AppColors.smallText,
                        endIndent: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.exit_to_app),
                                      Text(
                                        ' تسجيل خروج',
                                        style: TextStyle(
                                            fontSize: AppFontSize.hintFormField,
                                            color: AppColors.smallText,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              FDottedLine(
                                color: Colors.black,
                                height: 50.0,
                                strokeWidth: 1.0,
                                space: 0,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.person),
                                      Text(
                                        'الملف الشخصي',
                                        style: TextStyle(
                                            fontSize: AppFontSize.hintFormField,
                                            color: AppColors.smallText,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 2);

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 2);

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
