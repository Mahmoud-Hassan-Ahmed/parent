import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/buttons/full_width_btn.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';

class ChooseSonsPage extends StatefulWidget {
  const ChooseSonsPage({super.key});

  @override
  State<ChooseSonsPage> createState() => _ChooseSonsPageState();
}

class _ChooseSonsPageState extends State<ChooseSonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: FullWidthBtn(
          bg: const Color(0xFF707070),
          label: 'التالي',
          callBack: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'اختيار الابن',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: const [
                CardSonsWidget(),
                CardSonsWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
