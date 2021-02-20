import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class ChangetInfoProfile extends StatelessWidget {
  static String routeName = "ChangetInfoProfile";

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
                  height
                      : MediaQuery.of(context).size.height * 0.20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, right: 50),
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            Align(
              alignment:
                Alignment(0, -0.60),
              child: Container(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(
                              "assets/photos/adrien-wodey-_L_AkABEnmI-unsplash.jpg"),
                        ),
                      ),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: IconButton(
                          splashColor: Colors.blue,
                          splashRadius: 60,
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               SizedBox(
                        height: 50,
                      ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 120, right: 120),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: ExactAssetImage("assets/images/edit2.png"),
                    ),
                  ),
                ),
              SizedBox(
                        height: 20,
                      ),
                Container(
                  margin
                      : EdgeInsets.only(left: 80, right: 80),
                  child: Text(
                    lan.getTexts("edit-profile-info"),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 80, right: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      children: [
                        buildTextFormField("احمد ابراهيم"),
                        Divider(
                          color: Colors.white,
                          height: 0,
                          thickness: 1.0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField("Ahmed@gmail,com"),
                        Divider(
                          color: Colors.white,
                          height: 0,
                          thickness: 1.0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFormField("098766687"),
                        Divider(
                          color: Colors.white,
                          height: 0,
                          thickness: 1.0,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Text(
                            "النوع",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              activeColor: Colors.white,
                              value: true,
                              groupValue: true,
                              onChanged: (val) {},
                            ),
                            Text(
                              "ذكر",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Radio(
                              activeColor: Colors.white,
                              value: true,
                              groupValue: true,
                              onChanged: (val) {},
                            ),
                            Text(
                              "انثي",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 50, right: 50),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            lan.getTexts("change-info"),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField(String hinttext) {
    return TextFormField(
      showCursor: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
        border: InputBorder.none,
      ),
    );
  }
}
