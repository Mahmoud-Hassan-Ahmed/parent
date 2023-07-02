import 'dart:math';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MyHomePage extends StatelessWidget {
  Widget tagList = Container(
    height: 50.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          children: <Widget>[
            ActionChip(
                padding: EdgeInsets.symmetric(horizontal: 20),
                backgroundColor: AppColors.orange,
                label: Column(
                  children: [
                    Text(
                      'الاحد',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText,
                          color: Colors.white),
                    ),
                    Text(
                      '18/11/2022',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText,
                          color: Colors.white),
                    )
                  ],
                ),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                //backgroundColor: Colors.transparent,
                label: Text('Tag2'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                label: Text('Tag3'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                label: Text('Tag4'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                backgroundColor: Colors.yellow,
                label: Text('Tag1'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                //backgroundColor: Colors.transparent,
                label: Text('Tag2'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                label: Text('Tag3'),
                onPressed: () {
                  // update board with selection
                }),
            ActionChip(
                label: Text('Tag4'),
                onPressed: () {
                  // update board with selection
                }),
          ],
        )
      ],
    ),
  );
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
          // Container(
          //   child: Text("asd"),
          // ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                tagList,
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: AppColors.smallTextColor),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.white,
                                )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'رحلة الذهاب إلي المدرسة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: AppFontSize.hintText,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.location_searching,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            '0 KM',
                                            style: TextStyle(
                                                fontFamily: 'Cairo',
                                                fontSize:
                                                    AppFontSize.hintText - 2,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_searching,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '0 KM',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize:
                                                      AppFontSize.hintText - 2,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset('assets/images/bus.png'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'الطالب صعد الباص',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    FDottedLine(
                                      color: Colors.black,
                                      height: 50.0,
                                      strokeWidth: 2.0,
                                      dottedLength: 10.0,
                                      space: 2.0,
                                    ),
                                    const Icon(Icons.lock_clock)
                                  ],
                                ),
                                Text('8:36 ص',
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'الطالب صعد الباص',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    FDottedLine(
                                      color: Colors.black,
                                      height: 50.0,
                                      strokeWidth: 2.0,
                                      dottedLength: 10.0,
                                      space: 2.0,
                                    ),
                                    const Icon(Icons.lock_clock)
                                  ],
                                ),
                                Text('8:36 ص',
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'الطالب صعد الباص',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    FDottedLine(
                                      color: Colors.black,
                                      height: 50.0,
                                      strokeWidth: 2.0,
                                      dottedLength: 10.0,
                                      space: 2.0,
                                    ),
                                    const Icon(Icons.lock_clock)
                                  ],
                                ),
                                Text('8:36 ص',
                                    style: TextStyle(
                                      fontSize: AppFontSize.hintText - 2,
                                      fontFamily: 'Cairo',
                                      color: AppColors.smallText,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: AppColors.smallTextColor),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.white,
                                )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'رحلة الذهاب إلي المدرسة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: AppFontSize.hintText,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.location_searching,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            '0 KM',
                                            style: TextStyle(
                                                fontFamily: 'Cairo',
                                                fontSize:
                                                    AppFontSize.hintText - 2,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_searching,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '0 KM',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize:
                                                      AppFontSize.hintText - 2,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset('assets/images/bus.png'),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: false,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'الطالب صعد الباص',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      FDottedLine(
                                        color: Colors.black,
                                        height: 50.0,
                                        strokeWidth: 2.0,
                                        dottedLength: 10.0,
                                        space: 2.0,
                                      ),
                                      const Icon(Icons.lock_clock)
                                    ],
                                  ),
                                  Text('8:36 ص',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'الطالب صعد الباص',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      FDottedLine(
                                        color: Colors.black,
                                        height: 50.0,
                                        strokeWidth: 2.0,
                                        dottedLength: 10.0,
                                        space: 2.0,
                                      ),
                                      const Icon(Icons.lock_clock)
                                    ],
                                  ),
                                  Text('8:36 ص',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'الطالب صعد الباص',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      FDottedLine(
                                        color: Colors.black,
                                        height: 50.0,
                                        strokeWidth: 2.0,
                                        dottedLength: 10.0,
                                        space: 2.0,
                                      ),
                                      const Icon(Icons.lock_clock)
                                    ],
                                  ),
                                  Text('8:36 ص',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 2,
                                        fontFamily: 'Cairo',
                                        color: AppColors.smallText,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
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
