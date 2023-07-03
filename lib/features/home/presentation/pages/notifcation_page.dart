import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/features/home/presentation/widgets/notifications/notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  callBack: () {}, context: context, title: 'الاشعارات')),
          const SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                NotificationWidget(),
                NotificationWidget(),
                NotificationWidget(),
                NotificationWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
