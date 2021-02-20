import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class PrivacyPolicy extends StatelessWidget {
  static String routeName = "PrivacyPolicy";
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
                lan.getTexts("privacy-policy"),
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
              child: Text('''
تهدف سياسة الخصوصية هذه إلى مساعدتك على فهم ماهية المعلومات التي نجمعها وسبب جمعنا لها، وكذلك طريقة تحديث معلوماتك وتصديرها وحذفها. نحن نجمع المعلومات لتقديم خدمات ذات مستوى أفضل لمستخدمينا جميعا - بدءا من تحديد الأمور الأساسية، مثل اللغة التي تتحدثها دا ومنها على سبيل إلى أمور أكثر تعقي المثال الإعلانات التي ستجدها أكثر فائدة، أو الأشخاص الذين يهمك
أمرهم بشدة على الإنترنت، أوالفيديوهات التي قد تعجبك''',
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
