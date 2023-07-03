import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class BottomSendMessage extends StatelessWidget {
  const BottomSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: AppColors.bgSendMessage,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Transform.rotate(
                angle:
                    230 * 3.1415926535 / 180, // Convert 270 degrees to radians
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '...اكتب رسالة',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                      fontSize: AppFontSize.hintFormField,
                      color: AppColors.hint,
                      fontFamily: 'Cairo')),
            ),
          ))
        ],
      ),
    );
  }
}
