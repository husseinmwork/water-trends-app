import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class ChangePasswordScreen extends StatelessWidget {
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
                  Container(
                    margin: EdgeInsets.only(
                        top: 60, right: 60, left: 60, bottom: 20),
                    child: Image.asset("assets/images/edit2.png"),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "تغيير الرقم السري",
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
                    height: 100,
                  ),
                  buildContainertextfield("الرقم السري"),
                  Divider(
                    color: Colors.black,
                    height: 0,
                    thickness: 1,
                    endIndent: 50,
                    indent: 30,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildContainertextfield("اعادة الرقم السري"),
                  Divider(
                    color: Colors.black,
                    height: 0,
                    thickness: 1,
                    endIndent: 50,
                    indent: 30,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "تعديل",
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
            )
          ],
        ),
      ),
    );
  }

  Container buildContainertextfield(String hint) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 50),
      child: Directionality(
        textDirection: TextDirection.rtl,
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
      ),
    );
  }
}
