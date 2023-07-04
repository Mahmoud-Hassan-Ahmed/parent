import 'package:flutter/material.dart';
import 'package:parents/core/dialog/update.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/save_bottom.dart';
import 'package:parents/features/home/presentation/widgets/profile/form.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomSaveWidget(
        onSave: () {
          updateDialog(context).show();
        },
        onCancel: () {},
      ),
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
