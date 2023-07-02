import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
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
                Card(
                  elevation: 6.0,
                  color: Colors.amber,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الباص متجه إلي المنزل',
                            style: TextStyle(
                                color: AppColors.smallText,
                                fontSize: AppFontSize.smallText,
                                fontFamily: 'Cairo'),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 30),
                                        child: Text(
                                          'تتبع الرحلة',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: AppColors.smallText,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  AppFontSize.smallText * 2),
                                        ),
                                      ),
                                      Text(
                                        'يمكن الضغط هنا لتتبع وصول السائق',
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: AppFontSize.smallText,
                                            color: AppColors.smallTextColor),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                backgroundColor:
                                                    AppColors.smallTextColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    15,
                                                  ), // Adjust the radius value as needed
                                                ),
                                              ),
                                              child: Text(
                                                "ابدأ في التتبع",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Cairo',
                                                    fontSize:
                                                        AppFontSize.smallText +
                                                            3,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/image_bus1.png',
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 140,
                      child: Row(children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/attendence.png')),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  'طلب غياب',
                                  style: TextStyle(
                                      color: AppColors.smallText,
                                      fontSize: AppFontSize.titleFont,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'يمكنك الضغط هنا لتسجيل طلب غياب عن الذهاب أو العودة مع الباص المدرسي ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.smallTextColor,
                                        fontSize: AppFontSize.smallText,
                                        fontFamily: 'Cairo'),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
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
                            ))
                      ]),
                    )),
                Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'المزيد',
                                style: TextStyle(
                                    color: AppColors.smallText,
                                    fontSize: AppFontSize.hintText - 1,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                            const Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 3,
                              color: AppColors.smallText,
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/kids.png'),
                                Image.asset('assets/images/address.png'),
                                Image.asset('assets/images/driver.png'),
                              ],
                            ))
                          ],
                        )))
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
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(MyHomePage.context!).size.height / 4,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  )),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'مساء الخير ',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.white,
                            fontSize: AppFontSize.hintText),
                      ),
                      Text(
                        'اسم ولي الأمر',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.white,
                            fontSize: AppFontSize.hintFormField,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       'مساء الخير ',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontFamily: 'Cairo',
              //           fontSize: AppFontSize.hintText),
              //     )
              //   ],
              // ),
              Image.asset(
                'assets/images/user.png',
                height: 50,
                width: 50,
              ),
            ],
          ),
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg_home_bar.png'), // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as per your requirements
            ),
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
            child: CarouselSlider.builder(
                enableAutoSlider: true,
                unlimitedMode: true,
                slideBuilder: (index) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as desired
                      child: Image.asset('assets/images/${1}.png'),
                    ),
                  );
                },
                slideIndicator: CircularSlideIndicator(
                  padding: EdgeInsets.only(bottom: 40),
                ),
                itemCount: 5),
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
