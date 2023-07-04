import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/core/widgets/buttons/but_save_cancel.dart';

exitDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'تسجيل خروج',
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
            'هل انت متأكد من أنك تريد تسجيل الخروج',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: AppFontSize.smallText + 2,
              color: AppColors.smallText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: ButtonSaveCancelWidget(
              onCancel: () {},
              onSave: () {},
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
