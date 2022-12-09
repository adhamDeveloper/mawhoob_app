import 'package:flutter/material.dart';

import '../widgets/text_filed.dart';

class SavedScreen extends StatefulWidget {
  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  String hint = 'أبحث عن موهبة';
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
                     const  Spacer(),
                     const  Spacer(),
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
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 12, left: 12, bottom: 80),
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              const SizedBox(height: 15),
                              const Text(
                                'الأعلى تقييماً في هذا المجال',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0xffFDC93A),
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: const [
                                        CircleAvatar(
                                          backgroundColor: Colors.cyanAccent,
                                          radius: 35,
                                          foregroundImage:
                                              AssetImage('assets/asset-4.png'),
                                        ),
                                        Text('سيف الجابري')
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      children: const [
                                        CircleAvatar(
                                          radius: 35,
                                          foregroundImage:
                                              AssetImage('assets/a.png'),
                                        ),
                                        Text('علي الخليل')
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      children: const [
                                        CircleAvatar(
                                          radius: 35,
                                          foregroundImage:
                                              AssetImage('assets/asset-1.png'),
                                        ),
                                        Text('مريم سعيد')
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      children: const [
                                        CircleAvatar(
                                          radius: 35,
                                          foregroundImage:
                                              AssetImage('assets/asset-2.png'),
                                        ),
                                        Text('فحر عبد السلام')
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      children: const [
                                        CircleAvatar(
                                          radius: 35,
                                          foregroundImage:
                                              AssetImage('assets/asset-3.png'),
                                        ),
                                        Text('أروى سالم')
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'أبرز الموهوبين',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff58BACC)),
                              ),
                              const ListTile(
                                  title: Text(
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                      'assets/alp-studio-348253-unsplash.png'),
                                  Image.asset(
                                      'assets/juliana-malta-777706-unsplash.png'),
                                  Image.asset(
                                      'assets/sam-manns-379040-unsplash (1).png'),
                                ],
                              ),
                              const ListTile(
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
                                    foregroundImage: AssetImage('assets/8.png'),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                      'assets/omans.png'),
                                  Image.asset(
                                      'assets/warren-wong-242286-unsplash.png'),
                                  Image.asset('assets/Group 157.png'),
                                ],
                              ),
                              const ListTile(
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                      'assets/alex-knight-199364-unsplash.png'),
                                  Image.asset(
                                      'assets/adam-jaime-119551-unsplash.png'),
                                  Image.asset('assets/Group 158.png'),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 200,
                  right: 10,
                  child: SizedBox(
                    width: 200,
                    height: 55,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            hint,
                            style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                          ),
                          items: <String>[
                            'البحث العلمي',
                            'الاختراع والابتكار',
                            'الفن التشكيلي',
                            'الخط العربي ',
                            'الشعر وكتابة القصائد',
                            'الكتابة والتأليف',
                            'الحاسب الالي',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          onChanged: (values) {
                            setState(() {
                              hint = values!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 215,
                  left: 10,
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
