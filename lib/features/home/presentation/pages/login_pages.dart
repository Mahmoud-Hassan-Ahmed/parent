import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/widgets/login/appbar.dart';

class MyHomePage extends StatelessWidget {
  static BuildContext? context;
  bool _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MyHomePage.context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SearchHeader(
              icon: Icons.terrain,
              title: 'Trees',
              search: _Search(),
            ),
          ),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "تسجيل الدخول",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.orange,
                      fontSize: AppFontSize.titleFont,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username or Phone',
                              labelStyle: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintFormField),
                              prefixIcon: const Icon(Icons.person),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 12.0),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a username or phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintFormField),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  // setState(() {
                                  //   _passwordVisible = !_passwordVisible;
                                  // });
                                },
                                child: Icon(_passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 12.0),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // Add functionality for forget password link
                            },
                            child: Text(
                              'إسترجاع كلمة المرور',
                              style: TextStyle(
                                fontSize: AppFontSize.hintText,
                                fontFamily: 'Cairo',
                                color: AppColors.hint,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Form is valid, perform desired action
                                String username = _usernameController.text;
                                String password = _passwordController.text;
                                // Perform login logic with username and password
                              }
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            // color: Colors.blue,
                            // padding: EdgeInsets.symmetric(vertical: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Text('some text'),
                // Placeholder(
                //   color: Colors.red,
                //   fallbackHeight: 200,
                // ),
                // Container(
                //   color: Colors.blueGrey,
                //   height: 500,
                // )
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'ملاحظة : يرجى التواصل مع المدرسة/ المركز للحصول علي بيانات الدخول لأول مرة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.orange,
                        fontSize: AppFontSize.hintText,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cairo'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Search extends StatefulWidget {
  @override
  __SearchState createState() => __SearchState();
}

class __SearchState extends State<_Search> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _editingController,
              // textAlignVertical: TextAlignVertical.center,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _editingController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: () => setState(
                    () {
                      _editingController.clear();
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight =
      (MediaQuery.of(MyHomePage.context!).size.height / 3) / 2;
  final double maxTopBarHeight =
      MediaQuery.of(MyHomePage.context!).size.height / 3;
  final String title;
  final IconData icon;
  final Widget search;

  SearchHeader({
    required this.title,
    required this.icon,
    required this.search,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 100,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg_login_bar.png'), // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as per your requirements
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width / 2,
            )
          ],
        ),
      ),
    );
    return SizedBox(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              // child: Container(
              //   alignment: Alignment.center,
              //   // child: search,
              //   width: 200,
              //   height: 50,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //           offset: Offset(0, 10),
              //           blurRadius: 10,
              //           color: Colors.green.withOpacity(0.23),
              //         )
              //       ]),
              // ),
            ),
          ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => (MediaQuery.of(MyHomePage.context!).size.height / 3);

  @override
  double get minExtent =>
      (MediaQuery.of(MyHomePage.context!).size.height / 3) / 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
