import 'package:flutter/material.dart';

class SuccssesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.only(top: 250, right: 50, left: 50),
          children: [
            const Icon(
              Icons.check_circle,
              size: 60,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            const Text(
              'تمت عملية التسجيل بنجاح',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/home_screen'),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              child: const Text('الصفحة الرئيسية'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 1, color: Colors.blue),
                backgroundColor: Colors.white,
                minimumSize: const Size(0, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text(
                'دخول التطبيق',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
