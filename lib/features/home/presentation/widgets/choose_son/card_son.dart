import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class CardSonsWidget extends StatelessWidget {
  const CardSonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'يزن علي',
                  style: TextStyle(
                      fontSize: AppFontSize.hintText,
                      color: AppColors.smallText,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'ينبع- السعودية',
                  style: TextStyle(
                    fontSize: AppFontSize.hintText - 3,
                    color: AppColors.smallText,
                    fontFamily: 'Cairo',
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/parent.png'), // Replace with your image path
            ),
          ],
        ));
  }
}
