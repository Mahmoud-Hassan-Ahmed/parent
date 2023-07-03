import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, required this.indexActive});
  final int indexActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.list,
                  color: indexActive == 4 ? Colors.blueAccent : AppColors.hint,
                  size: indexActive == 4 ? 35 : null,
                ),
                Text(
                  'المزيد',
                  style: TextStyle(
                      fontSize: AppFontSize.smallText,
                      color:
                          indexActive == 4 ? Colors.blueAccent : AppColors.hint,
                      fontFamily: 'Cairo'),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.comments,
                  color: indexActive == 1 ? Colors.blueAccent : AppColors.hint,
                  size: indexActive == 1 ? 35 : null,
                ),
                Text(
                  'التواصل',
                  style: TextStyle(
                      fontSize: AppFontSize.smallText,
                      color:
                          indexActive == 1 ? Colors.blueAccent : AppColors.hint,
                      fontFamily: 'Cairo'),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.height / 10,
              decoration: const BoxDecoration(
                color: AppColors.orange,
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SvgPicture.asset('assets/icons/menu.svg'),
                  const Icon(
                    FontAwesomeIcons.houseDamage,
                    color: Colors.white,
                  ),
                  Text('التتبع',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText,
                          color: Colors.white,
                          fontFamily: 'Cairo'))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  color: indexActive == 3 ? Colors.blueAccent : AppColors.hint,
                  size: indexActive == 3 ? 35 : null,
                ),
                Text(
                  'رحلات سابقة',
                  style: TextStyle(
                      fontSize: AppFontSize.smallText,
                      color:
                          indexActive == 3 ? Colors.blueAccent : AppColors.hint,
                      fontFamily: 'Cairo'),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  color: AppColors.hint,
                ),
                Text(
                  'الرئيسية',
                  style: TextStyle(
                      fontSize: AppFontSize.smallText,
                      color: AppColors.hint,
                      fontFamily: 'Cairo'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
