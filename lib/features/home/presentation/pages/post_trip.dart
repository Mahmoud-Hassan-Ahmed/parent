import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/card_trip.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/horizental_slider.dart';

class PostTripPage extends StatefulWidget {
  const PostTripPage({super.key});

  @override
  State<PostTripPage> createState() => _PostTripPageState();
}

class _PostTripPageState extends State<PostTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(indexActive: 3),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context, title: 'رحلات سابقة', callBack: () {})),
          const SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                HorizontalWidget(),
                CardTripWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
