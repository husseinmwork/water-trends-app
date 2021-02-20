import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = "NotificationsScreen";
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lan.getTexts("notifications"),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Tajawal',
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            buildContainer("اشعارات الاخبار العاجلة"),
            buildContainer("اشعارات الاخبار الاكثر قرائة"),
            buildContainer("اشعارات اخر الاخبار"),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, right: 20),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: Row(
                        children: [
                          Image(
                            height: 30,
                            width: 30,
                            image: Svg("assets/icons/edit.svg"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "ابلاغ عن خطا في التطبيق",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                              ),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      width: double.infinity,
                      child: Text(
                        "هنالك شيء في التطبيق معطل او لا يعمل كما هو متوقع",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: Row(
                        children: [
                          Image(
                            height: 30,
                            width: 30,
                            image: Svg("assets/icons/sound.svg"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "اقترح تحسينا",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                              ),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      width: double.infinity,
                      child: Text(
                        "افكار جديده او تحسينات ترغب في هذا التطبيق",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "الغاء",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: 'Tajawal',
            ),
            // textAlign: TextAlign.center,
          ),
          Switch(value: true, onChanged: (val) {}),
        ],
      ),
    );
  }
}
