import 'package:flutter/material.dart';
import 'package:mawhoop/widgets/text_filed.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String hint = 'أبحث عن موهبة';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                decoration: const BoxDecoration(color: Color(0xff58BACC)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.quiz, color: Colors.white),
                        const SizedBox(width: 20),
                        const Spacer(),
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/chat_screen'),
                          icon: const Icon(Icons.message),
                          color: Colors.white,
                        ),
                        const SizedBox(width: 20),
                        const Icon(Icons.more_vert, color: Colors.white),
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
                    const Spacer(),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 12, left: 12, bottom: 20),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const SizedBox(height: 15),
                          const Text(
                            'مشاريع أضيفت حديثاً',
                            textAlign: TextAlign.end,
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
                                  height: 200,
                                  width: 250,
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
                                        const Expanded(
                                          child: ListTile(
                                            trailing: CircleAvatar(
                                              backgroundImage:
                                                  AssetImage('assets/ci.png'),
                                              radius: 20,
                                            ),
                                            title: Text(
                                              textAlign: TextAlign.right,
                                              'من بحور الشعر قصيدة',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            subtitle: Text(
                                              textAlign: TextAlign.right,
                                              'عبدالرحمن الشريف  I   الشعر',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  width: 250,
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
                                        const Expanded(
                                          child: ListTile(
                                            trailing: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/asset-4.png'),
                                              radius: 20,
                                            ),
                                            title: Text(' الرسامة الصغيرة', style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                                            subtitle:
                                                Text('سيف أحمد  I    الرسم', style: TextStyle(fontSize: 15),textAlign: TextAlign.right,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 200,
                                  width: 250,
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
                                        const Expanded(
                                          child: ListTile(
                                            trailing: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/asset-1.png'),
                                              radius: 20,
                                            ),
                                            title: Text(textAlign: TextAlign.right,'المصورة الشغوفة', style: TextStyle(fontSize: 15),),
                                            subtitle:
                                                Text(textAlign: TextAlign.right,'عائشة علي  I    الرسم', style: TextStyle(fontSize: 15),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text('الأكثر تقييماً لهذا الشهر',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFDC93A))),
                          Image.asset('assets/component.png'),
                          Image.asset('assets/component.png'),
                          Image.asset('assets/component1.png'),
                          Image.asset('assets/component1.png'),
                        ],
                      ),
                    )),
              ),
            ],
          )),
          Positioned(
            top: 180,
            left: 170,
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
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
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
          Positioned(
            left: 220,
            bottom: 600,
            child: Image.asset('assets/background3.png'),
          ),
          const Positioned(
            top: 180,
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
    );
  }
}
