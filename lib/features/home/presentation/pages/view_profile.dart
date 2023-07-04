import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/features/home/presentation/widgets/profile/form.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({super.key});

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context, title: 'الملف الشخصي', callBack: () {})),
          const SliverFillRemaining(
              hasScrollBody: true,
              child: FormProfileWidget(
                enable: true,
              ))
        ],
      ),
    );
  }
}
