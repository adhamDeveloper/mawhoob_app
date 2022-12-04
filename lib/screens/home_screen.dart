import 'package:flutter/material.dart';
import 'package:mawhoop/widgets/text_filed.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  height: 300,
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
                          Icon(Icons.message, color: Colors.white),
                          SizedBox(width: 20),
                          Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        '!استكشف',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        'Discover!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: SizedBox(
                    width: double.infinity,
                    height: 500,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'مشاريع أضيفت حديثاً',
                                    style: TextStyle(
                                      color: Color(0xffE2B0B3),
                                      fontSize: 20,

                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 170,
                                          width: 200,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                 Expanded(
                                                   child: Image.asset(
                                                    'assets/image1.png',
                                                    fit: BoxFit.cover,
                                                     width: double.infinity,
                                                ),
                                                 ),
                                                    Expanded(
                                                      child: ListTile(
                                                        trailing: CircleAvatar(radius: 20,),
                                                        title: Text(' الرسامة الصغيرة'),
                                                        subtitle: Text('أريج محمد  I    الرسم'),
                                                      ),
                                                    ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 170,
                                          width: 200,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Image.asset(
                                                    'assets/image2.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: ListTile(
                                                    trailing: CircleAvatar(radius: 20,),
                                                    title: Text(' الرسامة الصغيرة'),
                                                    subtitle: Text('أريج محمد  I    الرسم'),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 170,
                                          width: 200,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Image.asset(
                                                    'assets/image3.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: ListTile(
                                                    trailing: CircleAvatar(radius: 20,),
                                                    title: Text(' الرسامة الصغيرة'),
                                                    subtitle: Text('أريج محمد  I    الرسم'),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 170,
                                          width: 200,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Image.asset(
                                                    'assets/image2.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: ListTile(
                                                    trailing: CircleAvatar(radius: 20,),
                                                    title: Text(' الرسامة الصغيرة'),
                                                    subtitle: Text('أريج محمد  I    الرسم'),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 170,
                                          width: 200,
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Image.asset(
                                                    'assets/image3.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: ListTile(
                                                    trailing: CircleAvatar(radius: 20,),
                                                    title: Text(' الرسامة الصغيرة'),
                                                    subtitle: Text('أريج محمد  I    الرسم'),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 190),
                  child: SizedBox(
                    width: 140,
                    height: 50,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.arrow_circle_down,
                              color: Colors.blue,
                            ),
                            Text('أبحث عن موهبة'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 220, left: 30),
                  child: SizedBox(
                      width: 160,
                      child: MyTextField(
                        text: 'أبحث عن مشروع',
                        keyType: TextInputType.text,
                        icons: Icons.search,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
