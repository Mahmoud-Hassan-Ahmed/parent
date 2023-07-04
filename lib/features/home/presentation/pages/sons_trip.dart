import 'package:flutter/material.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/features/home/presentation/pages/sons_page.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';

class SonsTripsPage extends StatefulWidget {
  const SonsTripsPage({super.key});

  @override
  State<SonsTripsPage> createState() => _SonsTripsPageState();
}

class _SonsTripsPageState extends State<SonsTripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 3,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'رحلات الأبناء',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: [
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(callBack: () {
                  AppUtils.pushTo(context, const SonsPage());
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
