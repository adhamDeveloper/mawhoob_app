import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff58BACC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img.png'))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.quiz, color: Colors.white),
                          SizedBox(width: 20),
                          Icon(Icons.arrow_back_ios_new, color: Colors.white),
                          Spacer(),
                          Icon(Icons.message, color: Colors.white),
                          SizedBox(width: 20),
                          Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        'جائزة المشاريع الأعلى تقييـــماً خــلال الشهر',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const Spacer(),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, bottom: 70),
                  child: SizedBox(
                    width: double.infinity,
                    height: 550,
                    child: Card(
                        color: Colors.white70,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 12, left: 12, bottom: 80),
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              const SizedBox(height: 15),
                              const Text(
                                'هي جائزة أسبوعية بين الموهوبين من مختلف المواهب و المشاريع. يتم ترشيح الفائزين من خلال عدد التقييمات التي يحصل عليها مشاريعهم و بالتالي المشاريع التي تحصل على أعلى عدد تقييمات (نجوم) تكون من ضمن قائمة الترشح الأسبوعية. جوائز متنوعة و قيمة يحصل عليها الفائزين. يمكن زيادة عدد التقييمات من خلال مشاركة رابط المشروع مع مجموعة كبيرة من المستخدمين سواء داخل أو خارج التطبيق. ذلك يزيد من فرصة الفوز و دخول قائمة الترشيح. ',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'المرشحين هذا الأسبوع',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: ListTile(
                                    leading: RatingBarIndicator(
                                      rating: 2.75,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 20,
                                    ),
                                    onTap: () {},
                                    title: const Text(
                                      'مريم غسان',
                                      textAlign: TextAlign.end,
                                    ),
                                    subtitle: Text(
                                      '30s ago',
                                      textAlign: TextAlign.end,
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 30,
                                      foregroundImage:
                                          AssetImage('assets/asset-3.png'),
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: ListTile(
                                    onTap: () {},
                                    leading: RatingBarIndicator(
                                      rating: 1.75,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 20,
                                    ),
                                    title: Text(
                                      'آمنة عبد اللطيف',
                                      textAlign: TextAlign.end,
                                    ),
                                    subtitle: Text(
                                      '30s ago',
                                      textAlign: TextAlign.end,
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 30,
                                      foregroundImage:
                                          AssetImage('assets/8.png'),
                                    )),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: ListTile(
                                    onTap: () {},
                                    leading: RatingBarIndicator(
                                      rating: 5,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 20,
                                    ),
                                    title: Text(
                                      'سيف الجابري',
                                      textAlign: TextAlign.end,
                                    ),
                                    subtitle: Text(
                                      '30s ago',
                                      textAlign: TextAlign.end,
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 30,
                                      foregroundImage:
                                          AssetImage('assets/asset-4.png'),
                                    )),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 150, left: 220),
                    child: Image.asset(
                      'assets/icon.png',
                      height: 120,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
