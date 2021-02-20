import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class RecoveryPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.48,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                          "assets/images/Untitled1-removebg-preview.png"),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                    SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "استعادة الرقم السري",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                     SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "يمكن استعادة كلمة المرور عن طريق البريد الالكتروني المسجل لدينا",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                  SizedBox(
                    height: 150,
                  ),
                Container(
                    margin: EdgeInsets.only(left: 40, right: 50),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        showCursor: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: "البريد الالكتروني",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Tajawal",
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 0,
                    thickness: 1,
                    endIndent: 50,
                    indent: 30,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "ارسال كود التحقق",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Tajawal',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  

}
