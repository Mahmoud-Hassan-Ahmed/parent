import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/features/home/presentation/widgets/password/enter_code.dart';

class ConfirmPhoneWidget extends StatefulWidget {
  const ConfirmPhoneWidget({super.key});

  @override
  State<ConfirmPhoneWidget> createState() => _ConfirmPhoneWidgetState();
}

class _ConfirmPhoneWidgetState extends State<ConfirmPhoneWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'تفعيل كلمة المرور',
                  callBack: () {})),
          const SliverFillRemaining(
              hasScrollBody: true, child: CodeListWidget()),
        ],
      ),
    );
  }
}
