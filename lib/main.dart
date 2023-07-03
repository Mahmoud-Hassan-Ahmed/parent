import 'package:awesome_icons/awesome_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/core/widgets/appbar/appbar_attendence.dart';
import 'package:parents/core/widgets/appbar/appbar_more.dart';
import 'package:parents/core/widgets/appbar/appbar_tracking.dart';
import 'package:parents/core/widgets/appbar/with_carousal.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/core/widgets/buttons/full_width_btn.dart';
import 'package:parents/features/home/presentation/bloc/post_trip/post_trip_bloc.dart';
import 'package:parents/features/home/presentation/pages/sons_page.dart';
import 'package:parents/features/home/presentation/widgets/attendence/card_attendence.dart';
import 'package:parents/features/home/presentation/widgets/body_tracking/body_tracking.dart';
import 'package:parents/features/home/presentation/widgets/home/carousal_bar.dart';
import 'package:parents/features/home/presentation/widgets/more/menu.dart';
import 'package:parents/features/home/presentation/widgets/notifications/notification.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/card_trip.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/horizental_slider.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';
import 'package:parents/features/home/presentation/widgets/tracking/card_list.dart';
import 'package:parents/features/home/presentation/widgets/tracking/carousal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostTripBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              // pinned: true,
              // floating: false,
              delegate: AppBarAttendence(
                  context: context, widget: const CardAttendenceWidget())),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const CardAttendenceWidget(),
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
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
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
      ),
    );
    return SizedBox(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
