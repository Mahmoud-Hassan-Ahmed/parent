import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class BodySheetSons extends StatelessWidget {
  const BodySheetSons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Text(
              'تعديل بروفايل الطالب',
              style: TextStyle(
                  fontSize: AppFontSize.hintFormField + 2,
                  fontFamily: 'Cairo',
                  color: AppColors.smallText),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'الاسم',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'رقم الجوال',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'العنوان',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تغير صورة البروفايل',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintFormField,
                    color: AppColors.smallText,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset('assets/icons/upload.svg')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 40),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                    ),
                    onPressed: () {},
                    child: Text(
                      'حفظ التعديل',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText - 2,
                          color: Colors.white),
                    )),
                const SizedBox(
                  width: 30,
                ),
                TextButton.icon(
                  icon: SvgPicture.asset('assets/icons/Fail.svg'),
                  label: Text(
                    'إلغاء',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintText,
                        fontWeight: FontWeight.bold,
                        color: AppColors.smallTextColor),
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
