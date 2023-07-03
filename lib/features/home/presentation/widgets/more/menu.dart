import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'إعدادات الإشعارات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                Icons.notifications_outlined,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'إعدادات اللغة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                Icons.settings_outlined,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'سياسة الخصوصية',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                Icons.verified_user_outlined,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'الدعم الفني',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'احصل على مساعدة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                FontAwesomeIcons.rocketchat,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'تقييم التطبيق',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                FontAwesomeIcons.star,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: AppColors.hint,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'عن التطبيق',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField + 1,
                      color: AppColors.smallText),
                ),
              )),
              const Icon(
                FontAwesomeIcons.exclamationCircle,
                color: AppColors.smallText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
