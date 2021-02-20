import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class AddCompanyData extends StatelessWidget {
  static String routeName = "AddCompanyData";
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
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/photos/mrjn-photography-YpZ2cj4s0oo-unsplash.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.9),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  buildColumntextfield("اسم شركتك"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "الدولة",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Tajawal',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "المجال",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Tajawal',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage("assets/photos/Arabic-01.png"),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "شعار الشركة",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Tajawal',
                              fontSize: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 250, left: 10),
                          padding: EdgeInsets.all(8),
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "رفع الشعار",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      "وصف الشركة",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildColumntextfield("الموقع الالكتروني"),
                  buildColumntextfield("البريد الالكتروني"),
                  buildColumntextfield("رقم التواصل"),
                  buildColumntextfield("رقم الواتساب"),
                  buildColumntextfield("اسم مسؤول التواصل"),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      "العنوان",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildRow("assets/icons/facebook.svg", "Facebook"),
                  SizedBox(
                    height: 10,
                  ),
                  buildRow("assets/icons/whatsapp.svg", "Whatsapp"),
                  SizedBox(
                    height: 10,
                  ),
                  buildRow("assets/icons/linkedin.svg", "Linkedin"),
                  SizedBox(
                    height: 10,
                  ),
                  buildRow("assets/icons/email.svg", "Email"),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "اختر موقعك على الخريطة",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(right: 120, left: 120),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "اضف",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildRow(String icon, String title) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: EdgeInsets.only(right: 10, left: 10),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Image(
                color: Colors.blue,
                image: Svg(
                  icon,
                  size: Size(40, 40),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal'),
              ),
            ],
          ),
          Expanded(
            child: Divider(
              thickness: 2,
              height: 30,
              color: Colors.black,
              endIndent: 20,
              indent: 20,
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumntextfield(String hint) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 30),
          child: TextFormField(
            showCursor: false,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: hint,
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal'),
              border: InputBorder.none,
            ),
          ),
        ),
        Divider(
          color: Colors.black,
          height: 0,
          thickness: 1.0,
          endIndent: 50,
          indent: 30,
        ),
      ],
    );
  }
}
