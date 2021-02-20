import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class CallUsScreen extends StatelessWidget {
  static String routeName = 'CallUsScreen';
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lan.getTexts("call-us"),
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
            SizedBox(
              height: 10,
            ),
            buildContainertextfield("الاسم"),
            Divider(
              color: Colors.black,
              height: 0,
              thickness: 1.5,
              endIndent: 30,
              indent: 40,
            ),
            SizedBox(
              height: 10,
            ),
            buildContainertextfield("البريد الالكتروني"),
            Divider(
              color: Colors.black,
              height: 0,
              thickness: 1.5,
              endIndent: 30,
              indent: 40,
            ),
            SizedBox(
              height: 10,
            ),
            buildContainertextfield("عنوان الرسالة"),
            Divider(
              color: Colors.black,
              height: 0,
              thickness: 1.5,
              endIndent: 30,
              indent: 40,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "اكتب رسالتك",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white54),
              child: Card(
                elevation: 8,
                color: Colors.white54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ارفع الصورة",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        "اختياري",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[900],
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white54),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "اختياري",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: 'Tajawal',
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Text(
                "ارسال",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainertextfield(String hint) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 50),
      child: TextFormField(
        showCursor: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          hintText: hint,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Tajawal",
            color: Colors.black,
            fontSize: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
