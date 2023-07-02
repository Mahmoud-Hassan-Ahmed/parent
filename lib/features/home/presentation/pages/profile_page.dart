import 'dart:math';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MyHomePage extends StatelessWidget {
  static BuildContext? context;
  @override
  Widget build(BuildContext context) {
    MyHomePage.context = context;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
              selectedLabelStyle:
                  TextStyle(fontSize: AppFontSize.smallText + 2),
              unselectedLabelStyle:
                  TextStyle(fontSize: AppFontSize.smallText + 2),
              type: BottomNavigationBarType.fixed,
              iconSize: 20.0,
              selectedIconTheme: IconThemeData(size: 28.0),
              selectedItemColor: Color.fromARGB(255, 46, 90, 172),
              selectedFontSize: 16.0,
              unselectedFontSize: 12,
              currentIndex: 4,
              onTap: (value) {},
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: "المزيد",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: "التواصل",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange,
                    ),
                    child: Column(children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.white,
                      ),
                      Text('التتبع')
                    ]),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_sharp),
                  label: "رحلات سابقة",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "الرئيسية",
                ),
              ]),
        ),
      ),
      backgroundColor: AppColors.bgSendMessage,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            // pinned: true,
            // floating: false,
            delegate: SearchHeader(
              icon: Icons.terrain,
              title: 'Trees',
              search: _Search(),
            ),
          ),
          SliverFillRemaining(
            // hasScrollBody: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'إعدادات الإشعارات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      Icon(Icons.alarm_off),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Search extends StatefulWidget {
  // _Search({Key key}) : super(key: key);

  @override
  __SearchState createState() => __SearchState();
}

class __SearchState extends State<_Search> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _editingController,
              // textAlignVertical: TextAlignVertical.center,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _editingController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: () => setState(
                    () {
                      _editingController.clear();
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 200;
  final String title;
  final IconData icon;
  final Widget search;

  SearchHeader({
    required this.title,
    required this.icon,
    required this.search,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(MyHomePage.context!).size.height / 4,
        width: 100,
        child: Padding(padding: const EdgeInsets.all(8.0), child: Container()),
        decoration: const BoxDecoration(
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
          Positioned(
              top: (MediaQuery.of(MyHomePage.context!).size.height / 4) / 1.5,
              left: (MediaQuery.of(context).size.width / 3) / 4,
              width: (MediaQuery.of(context).size.width / 3) * 2.5,
              height: MediaQuery.of(MyHomePage.context!).size.height / 4,
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
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/images/user2.png'),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Icon(Icons.exit_to_app),
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
                                    children: [
                                      Icon(Icons.person),
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
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       bottom: 10,
          //     ),
          //     child: Container(
          //       alignment: Alignment.center,
          //       child: search,
          //       width: 200,
          //       height: 50,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.white,
          //           boxShadow: [
          //             BoxShadow(
          //               offset: Offset(0, 10),
          //               blurRadius: 10,
          //               color: Colors.green.withOpacity(0.23),
          //             )
          //           ]),
          //     ),
          //   ),
          // ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(MyHomePage.context!).size.height / 4) +
      ((MediaQuery.of(MyHomePage.context!).size.height / 4));

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
