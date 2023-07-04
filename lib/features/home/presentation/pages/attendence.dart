import 'package:flutter/material.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/widgets/appbar/appbar_attendence.dart';
import 'package:parents/features/home/presentation/pages/calendar.dart';
import 'package:parents/features/home/presentation/widgets/attendence/card_attendence.dart';

class AttendencePage extends StatefulWidget {
  const AttendencePage({super.key});

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
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
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          AppUtils.pushTo(context, const CalendarPage());
                        },
                        child: Image.asset('assets/images/add.png')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
