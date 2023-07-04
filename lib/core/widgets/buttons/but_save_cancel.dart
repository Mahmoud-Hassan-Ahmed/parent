import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class ButtonSaveCancelWidget extends StatelessWidget {
  const ButtonSaveCancelWidget(
      {super.key, required this.onSave, required this.onCancel});
  final Function onSave;
  final Function onCancel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.orange),
            ),
            onPressed: () {
              onSave.call();
            },
            child: Text(
              'حفظ التعديل',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintText - 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
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
            onCancel.call();
          },
        ),
      ],
    );
  }
}
