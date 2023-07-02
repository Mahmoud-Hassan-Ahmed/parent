import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      right: 0,
                    ),
                    leading: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/parent.png'), // Replace with your image path
                    ),
                    title: Text(
                      'اسم الشخص',
                      style: TextStyle(
                          color: AppColors.smallText,
                          fontSize: AppFontSize.hintFormField,
                          fontFamily: 'Cairo'),
                    ),
                    subtitle: Text(
                      'نص من الرسالة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                    onTap: () {
                      // Add functionality for when the list tile is tapped
                    },
                    trailing: Text(
                      'مايو ٢٠٢٢',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: Colors.grey),
                    ),
                  ),
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
              'الرسائل',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.titleFont - 4),
            ),
          ],
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg_message_bar.png'), // Replace with your image path
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
