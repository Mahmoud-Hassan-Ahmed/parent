import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/appbar_callender.dart';
import 'package:parents/core/widgets/buttons/full_width_btn.dart';
import 'package:parents/core/dialog/done.dart';
import 'package:parents/features/home/presentation/widgets/calender/body_calendar.dart';
import 'package:parents/features/home/presentation/widgets/calender/calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: FullWidthBtn(
            label: 'إرسال الطلب',
            callBack: () {
              dilaogDone(context).show();
            }),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              // pinned: true,
              // floating: false,
              delegate: AppBarCalendar(
                  context: context,
                  callBack: () {},
                  callendar: const CalendarWidget())),
          const SliverFillRemaining(
              // hasScrollBody: true,
              child: CalendarBodyWidget())
        ],
      ),
    );
  }
}
