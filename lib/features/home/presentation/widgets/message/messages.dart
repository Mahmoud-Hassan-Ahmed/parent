import 'package:flutter/material.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/pages/chat_page.dart';

class MessagesWidget extends StatelessWidget {
  const MessagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 5),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
            top: 0,
          ),
          leading: const CircleAvatar(
            foregroundColor: AppColors.bgSendMessage,
            backgroundColor: AppColors.bgSendMessage,
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 0,
          ),
          leading: const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/parent.png'),
          ),
          title: Text(
            'اسم الشخص',
            style: TextStyle(
                color: AppColors.smallText,
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo'),
          ),
          subtitle: Text(
            'نص من الرسالة',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
          onTap: () {
            AppUtils.pushTo(context, const ChatPage());
          },
          trailing: Text(
            'مايو ٢٠٢٢',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
