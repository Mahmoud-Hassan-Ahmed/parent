import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/features/home/presentation/widgets/sons/body_sheet.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';

class SonsPage extends StatefulWidget {
  const SonsPage({super.key});

  @override
  State<SonsPage> createState() => _SonsPageState();
}

class _SonsPageState extends State<SonsPage> {
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
                  context: context, title: 'رحلات الأبناء', callBack: () {})),
          SliverFillRemaining(
            hasScrollBody: true,
            child: ListView(
              children: [
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSonsWidget(
                  callBack: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (context) {
                          return const BodySheetSons();
                        });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
