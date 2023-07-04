import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

chooseLangDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'اختيار اللغة',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.smallText + 2,
                  color: AppColors.smallText,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              tileColor: Colors.white,
              value: !false,
              onChanged: (value) {},
              controlAffinity: ListTileControlAffinity.leading,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              checkColor: Colors.white,
              activeColor: Colors.white,
              title: Text(
                'English',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
                textAlign: TextAlign.left,
              ),
            ),
            const Divider(
              height: 5,
              indent: 10,
              endIndent: 10,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {},
              controlAffinity: ListTileControlAffinity.leading,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              activeColor: Colors.white,
              checkColor: AppColors.orange,
              title: Text(
                'العربية',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    ));
