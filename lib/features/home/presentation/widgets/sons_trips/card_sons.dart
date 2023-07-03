import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class CardSonsWidget extends StatelessWidget {
  const CardSonsWidget({super.key, this.callBack});
  final Function? callBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack != null
          ? () {
              callBack!.call();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'بيانات السائق',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'اسم السائق',
                            style: TextStyle(
                              fontSize: AppFontSize.hintText - 3,
                              color: AppColors.smallText,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Text(
                            ' مجموعة ب',
                            style: TextStyle(
                              fontSize: AppFontSize.hintText - 3,
                              color: AppColors.smallText,
                              fontFamily: 'Cairo',
                            ),
                          )
                        ],
                      ),
                    )),
                FDottedLine(
                  color: Colors.black,
                  height: 50.0,
                  strokeWidth: 1.0,
                  space: 0,
                ),
                Expanded(
                    flex: 1,
                    child: Column(
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
                    )),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/parent.png'),
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
