import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class FormProfileWidget extends StatelessWidget {
  const FormProfileWidget({super.key, required this.enable});
  final bool enable;

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();

    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    return ListView(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 120,
                height: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/add_image_pro.png',
                    ),
                    if (enable)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: AppColors.smallTextColor,
                            )),
                      )
                  ],
                ),
              ),
            ),
            if (!enable)
              Align(
                alignment: Alignment.topLeft,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.red,
                      ),
                      label: const Text(
                        'تعديل',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'اسم المستخدم ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                TextFormField(
                  enabled: enable,
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'رقم الجوال',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: InternationalPhoneNumberInput(
                    initialValue: PhoneNumber(
                      isoCode: Platform.localeName.split('_').last,
                    ),
                    isEnabled: enable,
                    inputDecoration:
                        const InputDecoration(border: InputBorder.none),
                    onInputChanged: (PhoneNumber number) {
                      // print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      // print(value);
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    // initialValue: number,
                    // textFieldController: controller,
                    formatInput: true,
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    inputBorder: const OutlineInputBorder(),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'الاسم الكامل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                TextFormField(
                  enabled: enable,
                  controller: fullNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'البريد الالكتروني',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                TextFormField(
                  enabled: enable,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'تحديد المدينة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                TextFormField(
                  controller: cityController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'العنوان بالتفصيل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText + 1,
                      color: AppColors.smallText),
                ),
                TextFormField(
                  enabled: enable,
                  controller: addressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 3,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        if (!enable)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: AppColors.hint,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'تغيير كلمة المرور',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintFormField + 1,
                        color: AppColors.smallText),
                  ),
                )),
                const Icon(
                  Icons.settings_outlined,
                  color: AppColors.smallText,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
