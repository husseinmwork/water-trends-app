import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class WeScreen extends StatelessWidget {
  static String routeName = "WeScreen";
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160,
                height: 40,
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset("assets/images/edit2.png"),
              ),
            ],
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
            Container(
              width: double.infinity,
              margin:
                  EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 100),
              child: Text(
                lan.getTexts("who-are-we"),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Text(
                '''شركة water trends تهتم بمجالات المياه وتضم العديد من الشركات المختصة في مجالات المياه ويمكنك من خلاله اضافة بيانات لشركتك للتواصل مع باقي الشركات
                
                ''',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
