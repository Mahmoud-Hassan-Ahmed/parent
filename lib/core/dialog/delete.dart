import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/core/widgets/buttons/full_width_btn.dart';

deleteDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'حذف طلب الغياب',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.smallText + 2,
                color: AppColors.smallText,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'هل انت متأكد انك تريد حذف الطلب',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: AppFontSize.smallText + 2,
              color: AppColors.smallText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FullWidthBtn(
              label: 'نعم',
              callBack: () {},
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FullWidthBtn(
              label: 'لا',
              textColor: AppColors.smallText,
              callBack: () {},
              bg: AppColors.bgSendMessage,
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
