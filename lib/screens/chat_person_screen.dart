import 'package:flutter/material.dart';
import 'package:mawhoop/widgets/text_filed.dart';

import '../models/chat_models.dart';

class ChatScreenPerson extends StatelessWidget {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "السلام عليكم", messageType: "receiver"),
    ChatMessage(
        messageContent: "حابة أتعلم معك في تصميم هوية", messageType: "sender"),
    ChatMessage(
        messageContent: "أكيد و أتشرف .. هذا دافع لي لتطوير موهبتي",
        messageType: "receiver"),
    ChatMessage(messageContent: "شكراً لك", messageType: "sender"),
    ChatMessage(messageContent: "العفو", messageType: "receiver"),
    ChatMessage(messageContent: "😍", messageType: "receiver"),
    ChatMessage(messageContent: "😘", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    decoration: const BoxDecoration(color: Color(0xff58BACC)),
                    child: Column(
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
                              icon: const Icon(Icons.arrow_back_ios_new,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            const Icon(Icons.more_vert, color: Colors.white),
                          ],
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 200,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                            ),
                            title: Text(
                              'بدرية أحمد',
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              'Online!',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: SizedBox(
                    width: double.infinity,
                    height: 550,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: ListView(
                          padding: const EdgeInsets.all(10),
                          physics: const BouncingScrollPhysics(),
                          children: [
                            ListView.builder(
                              itemCount: messages.length,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14, top: 10, bottom: 10),
                                  child: Align(
                                    alignment: (messages[index].messageType ==
                                            "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: (messages[index].messageType ==
                                                  "receiver"
                                              ? Colors.grey.shade200
                                              : Colors.blue[200]),
                                        ),
                                        padding: const EdgeInsets.all(16),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              messages[index].messageContent,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        )),
                                  ),
                                );
                              },
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyTextField(
        text: 'أكتب هنا',
        keyType: TextInputType.text,
        icons: Icons.send,
        function: () {},
      ),
    );
  }
}
