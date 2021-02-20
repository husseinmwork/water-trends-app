import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/sceens/about-application-screen.dart';
import 'package:water_trends_app/sceens/callUs-screen.dart';
import 'package:water_trends_app/sceens/company-news-screen.dart';
import 'package:water_trends_app/sceens/condition-screen.dart';
import 'package:water_trends_app/sceens/notifications-screen.dart';
import 'package:water_trends_app/sceens/privacy-policy-screen.dart';
import 'package:water_trends_app/sceens/we-screen.dart';
import '../Providers/langugeProvider.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget buildListTile(String icon, String title) {
    return ListTile(
      leading: Image(
        image: Svg(icon, color: Color(0xFFFFFFFF), size: Size(20, 20)),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }

  var lan;

  @override
  Widget build(BuildContext context) {
    lan = Provider.of<LanguageProvider>(context, listen: true);

    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width / 1.3,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.6,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
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
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/photos/1596890106875113400.jpg",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      "محمد علي احمد",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: lan.getTexts("search-in"),
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [
                buildListTile(
                  "assets/icons/home.svg",
                  lan.getTexts("home-screen"),
                ),
                buildListTile(
                  "assets/icons/newspaper.svg",
                  lan.getTexts("last-news"),
                ),
                buildListTile(
                  "assets/icons/lamp.svg",
                  lan.getTexts("breaking-news"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(CompanyNews.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/journal.svg",
                    lan.getTexts("company-news"),
                  ),
                ),
                buildListTile(
                  "assets/icons/book.svg",
                  lan.getTexts("articles"),
                ),
                buildListTile(
                  "assets/icons/layers.svg",
                  lan.getTexts("jobs"),
                ),
                buildListTile(
                  "assets/icons/video-player.svg",
                  lan.getTexts("videos"),
                ),
                buildListTile(
                  "assets/icons/user.svg",
                  lan.getTexts("my-profile"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(NotificationsScreen.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/bell.svg",
                    lan.getTexts("notifications"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(CallUsScreen.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/smartphone.svg",
                    lan.getTexts("call-us"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(WeScreen.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/info.svg",
                    lan.getTexts("who-are-we"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AboutApplication.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/book.svg",
                    lan.getTexts("about-application"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(PrivacyPolicy.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/invisible.svg",
                    lan.getTexts("privacy-policy"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(ConditionScreen.routeName);
                  },
                  child: buildListTile(
                    "assets/icons/ancient-scroll.svg",
                    lan.getTexts("conditions"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showAlertDilog(context);
                  },
                  child: buildListTile(
                    "assets/icons/share.svg",
                    lan.getTexts("share-app"),
                  ),
                ),
                buildListTile(
                  "assets/icons/poll-symbol-on-black-square-with-rounded-corners.svg",
                  lan.getTexts("rate-app"),
                ),
                buildListTile(
                  "assets/icons/settings.svg",
                  lan.getTexts("settings"),
                ),
                buildListTile(
                  "assets/icons/evidence.svg",
                  lan.getTexts("company-guid-screen"),
                ),
                buildListTile(
                  "assets/icons/sign-out-option.svg",
                  lan.getTexts("sign-out"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDilog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.only(left: 10, top: 10, right: 10),
            content: Container(
              padding: EdgeInsets.all(0),
              height: 200,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(1, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildColumnlogo(
                            "assets/icons/facebook.svg", "Facebook", context),
                        buildColumnlogo(
                            "assets/icons/whatsapp.svg", "Whatsapp", context),
                        buildColumnlogo(
                            "assets/icons/linkedin.svg", "Linkedin", context),
                        buildColumnlogo(
                            "assets/icons/twitter.svg", "Twitter", context),
                        buildColumnlogo(
                            "assets/icons/email.svg", "Email", context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Column buildColumnlogo(String image, String title, BuildContext context) {
    return Column(
      children: [
        Image(
          color: Colors.blueAccent,
          image: Svg(
            image,
            size: Size(30, 30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
