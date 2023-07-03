import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/appbar_tracking.dart';
import 'package:parents/features/home/presentation/widgets/tracking/card_list.dart';
import 'package:parents/features/home/presentation/widgets/tracking/carousal.dart';

class TrackingSonsPage extends StatefulWidget {
  const TrackingSonsPage({super.key});

  @override
  State<TrackingSonsPage> createState() => _TrackingSonsPageState();
}

class _TrackingSonsPageState extends State<TrackingSonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarTraking(
                  context: context,
                  carousal: const CarousalTrackingWidget(
                    imgList: [
                      'assets/images/1.png',
                      'assets/images/1.png',
                      'assets/images/1.png',
                      'assets/images/1.png',
                      'assets/images/1.png'
                    ],
                  ))),
          const SliverFillRemaining(
              // hasScrollBody: true,
              child: CardListWidget())
        ],
      ),
    );
  }
}
