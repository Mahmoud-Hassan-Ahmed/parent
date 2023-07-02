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
      backgroundColor: Colors.white70,
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
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Text(
                  'جميع الأبناء',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      fontWeight: FontWeight.bold,
                      color: AppColors.smallText),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 6.0,
                  color: Colors.green,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      'الرحلة جارية',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: AppFontSize.smallText + 1,
                                          fontFamily: 'Cairo'),
                                    ))),
                            FDottedLine(
                              color: Colors.black,
                              height: 50.0,
                              strokeWidth: 1.0,
                              space: 0,
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'ينبع- السعودية',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      'assets/images/parent.png'), // Replace with your image path
                                )),
                          ],
                        )),
                  ),
                ),
                Card(
                  elevation: 6.0,
                  color: Colors.yellow,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      'الرحلة جارية',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: AppFontSize.smallText + 1,
                                          fontFamily: 'Cairo'),
                                    ))),
                            FDottedLine(
                              color: Colors.black,
                              height: 50.0,
                              strokeWidth: 1.0,
                              space: 0,
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'ينبع- السعودية',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      'assets/images/parent.png'), // Replace with your image path
                                )),
                          ],
                        )),
                  ),
                ),
                Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  'لا توجد رحلات الآن',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: AppFontSize.smallText + 1,
                                      fontFamily: 'Cairo'),
                                ))),
                        FDottedLine(
                          color: Colors.black,
                          height: 50.0,
                          strokeWidth: 1.0,
                          space: 0,
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'يزن علي',
                                  style: TextStyle(
                                      fontSize: AppFontSize.hintText,
                                      color: AppColors.smallText,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'ينبع- السعودية',
                                  style: TextStyle(
                                    fontSize: AppFontSize.hintText - 3,
                                    color: AppColors.smallText,
                                    fontFamily: 'Cairo',
                                  ),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                  'assets/images/parent.png'), // Replace with your image path
                            )),
                      ],
                    )),
              ],
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
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 100,
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
            SizedBox(
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
          Positioned(
            top: (MediaQuery.of(MyHomePage.context!).size.height / 4) / 2,
            width: MediaQuery.of(MyHomePage.context!).size.width,
            height: MediaQuery.of(MyHomePage.context!).size.height / 4,
            child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.5,
                  aspectRatio: 1,
                  enlargeCenterPage: true,
                ),
                items: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  ),
                ]),
          ),
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
      ((MediaQuery.of(MyHomePage.context!).size.height / 4) / 2);

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
