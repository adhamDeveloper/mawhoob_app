import 'package:flutter/material.dart';

import '../widgets/text_filed.dart';

class ChatScreen extends StatelessWidget {
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
                  height: 200,
                  decoration: const BoxDecoration(color: Color(0xff58BACC)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.quiz, color: Colors.white),
                          const SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0, left: 0),
                          child: ListView(
                            padding: const EdgeInsets.all(10),
                            physics: const BouncingScrollPhysics(),
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    right: 12, left: 12, top: 20),
                                child: const Text(
                                  'الرسائل',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                  padding: const EdgeInsets.only(
                                      right: 12, left: 12),
                                  child: const Text(
                                    'لديك 2 الرسائل جديدة',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  )),
                              ListView.builder(
                                itemCount: 8,
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return myContainer();
                                },
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 120, left: 50, right: 50),
                  child: SizedBox(
                      width: 300,
                      child: MyTextField(
                        text: 'إبحث',
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

class myContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/chat_person_screen');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/image3.png'),
                    radius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'adham',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Hellow!',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              '2:00',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
