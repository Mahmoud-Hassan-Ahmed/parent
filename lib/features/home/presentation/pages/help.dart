import 'package:flutter/material.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/send_message.dart';
import 'package:parents/features/home/presentation/widgets/chat/chat.dart';

class HelpCahtPage extends StatefulWidget {
  const HelpCahtPage({super.key});

  @override
  State<HelpCahtPage> createState() => _HelpCahtPageState();
}

class _HelpCahtPageState extends State<HelpCahtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomSendMessage(),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'التحدث مع الدعم الفني',
                callBack: () {}),
          ),
          const SliverFillRemaining(hasScrollBody: true, child: ChatWidget())
        ],
      ),
    );
  }
}
