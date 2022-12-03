import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawhoop/widgets/text_filed.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffD5822E),
        body: Stack(
          children: [
            // Positioned(left: 0,right: 0,child: Image.asset('assets/white_image.png',)),
            Image.asset('assets/background.png'),
            Positioned(
              bottom: 600,
              left: -50,
              child: Image.asset('assets/background2.png'),
            ),

            ListView(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 60),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.quiz,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
                Image.asset('assets/logo.png'),
                ElevatedButton(
                  onPressed: () => login(),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white,
                      minimumSize: const Size(0, 45)),
                  child: const Text(
                    'تسجيل دخول',
                    style: TextStyle(fontSize: 18, color: Colors.orange),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => createAccount(),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white,
                      minimumSize: const Size(0, 45)),
                  child: const Text(
                    'إنشاء حساب',
                    style: TextStyle(fontSize: 18, color: Colors.orange),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white,
                      minimumSize: const Size(0, 45)),
                  child: const Text(
                    'دخول كزائر',
                    style: TextStyle(fontSize: 18, color: Colors.orange),
                  ),
                ),
                const SizedBox(height: 60),
                Text(
                  'Language  العربي',
                  style: TextStyle(color: Colors.grey.shade100),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ));
  }

  void login() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 550,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            children: [
              const Text(
                '..أهلا بك',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              const SizedBox(height: 10),
              const MyTextField(
                text: 'رقم الجوال',
                keyType: TextInputType.phone,
                icons: Icons.phone,
              ),
              const SizedBox(height: 10),
              MyTextField(
                isObscureText: _isVisible,
                function: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                isIgnore: false,
                text: 'كلمة المرور',
                keyType: TextInputType.visiblePassword,
                icons: _isVisible ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(height: 15),
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          minimumSize: const Size(100, 50)),
                      onPressed: () {},
                      child: const Text(
                        'تسجيل كلمة المرور؟',
                        textAlign: TextAlign.right,
                      ))),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      minimumSize: const Size(200, 45)),
                  child: const Text('دخول'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'تسجيل الدخول السريع',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.blue,
                        elevation: 10,
                        minimumSize: const Size(50, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Colors.white),
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.red,
                        elevation: 10,
                        minimumSize: const Size(50, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Colors.white),
                    child: const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.blue.shade200,
                        elevation: 10,
                        minimumSize: const Size(50, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Colors.white),
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void createAccount() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 550,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            children: [
              const Text(
                '!أهلاً بك يا مبدع',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              const SizedBox(height: 10),
              const MyTextField(
                text: 'رقم الجوال',
                keyType: TextInputType.phone,
                icons: Icons.phone,
              ),
              const SizedBox(height: 10),
              const MyTextField(
                text: 'الإسم كامل',
                keyType: TextInputType.text,
                icons: Icons.person,
              ),
              const SizedBox(height: 10),
              const MyTextField(
                text: 'عنوان الإقامة',
                keyType: TextInputType.text,
                icons: FontAwesomeIcons.addressCard,
              ),
              const SizedBox(height: 10),
              MyTextField(
                isObscureText: _isVisible,
                function: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                isIgnore: false,
                text: 'كلمة المرور',
                keyType: TextInputType.visiblePassword,
                icons: _isVisible ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      minimumSize: const Size(200, 45)),
                  child: const Text('تسجيل'),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
