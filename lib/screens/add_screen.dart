import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mawhoop/widgets/text_filed.dart';

class AddScreen extends StatelessWidget {
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
                  height: 150,
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
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/chat_screen');
                            },
                            icon: Icon(Icons.message),
                            color: Colors.white,
                          ),
                          const SizedBox(width: 20),
                          const Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            right: 12, left: 12, bottom: 20),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Image.asset('assets/45.png'),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
                                const Text('50'),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                const Text('200'),
                                const Spacer(),
                                IconButton(
                                    onPressed: () => myShareDialog(context),
                                    icon: const Icon(
                                      Icons.share,
                                      color: Colors.blue,
                                    )),
                                const Text('30'),
                                const Spacer(),
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
                                ),
                              ],
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: ListTile(
                                  onTap: () {},
                                  leading: const Icon(Icons.more_vert),
                                  title: const Text(
                                    'آمنة عبد اللطيف',
                                    textAlign: TextAlign.end,
                                  ),
                                  subtitle: const Text(
                                    'الأداة الهامة في التصوير ليس الكاميرا ولكن المصور، فهو الذي يقوم بتحديد واهتمام أنشاء أجمل صورة لهؤلاء الأشخاص، لذلك عليك أن تحتار المصور العطوف للتأكد من أتخاذ أجمل الصور لك',
                                    textAlign: TextAlign.end,
                                  ),
                                  trailing: const CircleAvatar(
                                    radius: 30,
                                    foregroundImage: AssetImage('assets/8.png'),
                                  )),
                            ),
                            const SizedBox(height: 10),
                            const MyTextField(
                              icons: Icons.person,
                              text: 'Add a comment',
                              keyType: TextInputType.text,
                            ),
                          ],
                        )),
                  ),
                ),
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
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
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

  myShareDialog(BuildContext context) {
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
                    const Icon(Icons.share, color: Colors.white, size: 80),
                    const Text(
                      'شارك رابط العمل للتقييم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5.0),
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        // icon: Icon(Icons.link),
                        fillColor: Colors.white,
                        hintText: 'https://www.mawhoob.com/Aysha_ali',
                      ),
                    ),
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
