import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/widgets/appbar/appbar_more.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/features/home/presentation/widgets/more/menu.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(indexActive: 4),
      backgroundColor: AppColors.recieveColorMessage,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              // pinned: true,
              floating: false,
              delegate: AppBarMore(context: context, callBack: () {})),
          const SliverFillRemaining(
            // fillOverscroll: true,
            // hasScrollBody: false,
            child: Padding(padding: EdgeInsets.all(8.0), child: MenuWidget()),
          )
        ],
      ),
    );
  }
}
