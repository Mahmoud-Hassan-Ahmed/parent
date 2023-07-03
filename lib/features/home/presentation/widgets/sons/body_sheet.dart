import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
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
            Text(
              'تعديل بروفايل الطالب',
              style: TextStyle(
                  fontSize: AppFontSize.hintFormField + 2,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
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
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(FontAwesomeIcons.upload),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.orange),
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
                  icon: const Icon(FontAwesomeIcons.windowClose),
                  label: Text(
                    'إلغاء',
                    style: TextStyle(
                      fontSize: AppFontSize.hintText,
                      fontWeight: FontWeight.bold,
                    ),
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
