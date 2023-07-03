import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_carousal.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/features/home/presentation/widgets/home/cards_home.dart';
import 'package:parents/features/home/presentation/widgets/home/carousal_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            // pinned: true,
            // floating: false,
            delegate: WithCarousalBar(
                context: context,
                carousal: const CarousalHomeWidget(
                  imgList: [
                    'assets/images/1.png',
                    'assets/images/1.png',
                    'assets/images/1.png',
                    'assets/images/1.png',
                    'assets/images/1.png'
                  ],
                )),
          ),
          const SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: false,
              child: CardsHomeWidgets())
        ],
      ),
    );
  }
}
