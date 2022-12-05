import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 190,
                  decoration: const BoxDecoration(color: Color(0xff58BACC)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.quiz, color: Colors.white),
                          SizedBox(width: 20),
                          Icon(Icons.arrow_back_ios_new, color: Colors.white),
                          Spacer(),
                          Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Card(
                        color: const Color(0xff282E39),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30, right: 12, left: 12, bottom: 80),
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              const Text(
                                'عائشة علي',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              const Text(
                                'تصوير فوتوغرافي  |  جامعة صحار  | 2022',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(children: const [
                                    Text(
                                      '135',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Posts',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                  Column(children: const [
                                    Text(
                                      '5,300k',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'followers',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                  Column(children: const [
                                    Text(
                                      '99',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'following',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                  ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(100, 40),
                                      elevation: 20,
                                      shadowColor: Colors.yellow,
                                      backgroundColor: const Color(0xffFDC93A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    onPressed: () => myshowDialog(context),
                                    icon: const Icon(Icons.star),
                                    label: const Text('قيمني'),
                                  )
                                ],
                              ),
                              const Divider(color: Colors.grey, height: 20),
                              Row(children: [
                                Expanded(
                                  child: Column(
                                    children: const [
                                      ListTile(
                                        leading: Icon(
                                          Icons.home,
                                          color: Colors.grey,
                                        ),
                                        title: Text(
                                          'Vive en Zihuatanejo, Guerrero, México.',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.hourglass_bottom,
                                          color: Colors.grey,
                                        ),
                                        title: Text(
                                          'Se unió en: Septiembre de 2010',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.info,
                                          color: Colors.grey,
                                        ),
                                        title: Text(
                                          'Ver más información de Mao',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/icon.png',
                                  fit: BoxFit.cover,
                                ),
                              ]),
                              const Divider(color: Colors.grey, height: 20),
                              Image.asset('assets/group.png'),
                            ],
                          ),
                        )),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 90, left: 120),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/image1.png'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  myshowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white70,
            elevation: 10,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: SizedBox(
              width: 500,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/starts.png',
                      height: 100,
                    ),
                    const Text(
                      'ما رأيك بمواهبي و أعمالي؟',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5.0),
                    Center(
                      child: RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 30.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                      child: TextField(
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'أضف تعليقاً عن المشروع/ المحتوى',
                        ),
                        maxLines: 8,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        mySuccssesDialog(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        decoration: const BoxDecoration(
                          color: Color(0xffFDC93A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0)),
                        ),
                        child: const Text(
                          'إرسال',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  mySuccssesDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white70,
            elevation: 10,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: SizedBox(
              width: 500,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/star2.png',
                      height: 100,
                    ),
                    const Text(
                      'تم إرسال تقييمك شكراً لك!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        decoration: const BoxDecoration(
                          color: Color(0xffFDC93A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0)),
                        ),
                        child: const Text(
                          'عودة',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
