import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/Providers/theme_provider.dart';
import 'package:water_trends_app/sceens/change-account-info-screen.dart';
import 'package:water_trends_app/sceens/change-password-screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String valueChoose;

  List listItem = ["العربية", "English"];

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    var lan = Provider.of<LanguageProvider>(context, listen: true);

    Widget _dropdonwbutton() {
      return DropdownButton(
        dropdownColor: Colors.white,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 30,
        iconEnabledColor: Colors.blue,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        hint: Text(
          "العربية",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'Tajawal'),
        ),
        value: valueChoose,
        onChanged: (val) {
          valueChoose = val;
        },
        items: listItem.map((item) {
          return DropdownMenuItem(
            onTap: () {
              isSelected = !isSelected;

              Provider.of<LanguageProvider>(context, listen: false)
                  .changeLan(isSelected);
            },
            value: item,
            child: Text(
              item,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Tajawal',
              ),
            ),
          );
        }).toList(),
      );
    }

    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        // backgroundColor: Theme.of(context).accentColor,
        body: Stack(
          children: [
            Container(
              margin: isLandScape
                  ? EdgeInsets.only(top: 50, left: 90, right: 90)
                  : EdgeInsets.all(0),
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                size: Size(400.0,
                    500.0), //You can Replace this with your desired WIDTH and HEIGHT
                painter: isLandScape
                    ? LRPSCustomPainter(context: context)
                    : RPSCustomPainter(context: context),
              ),
            ),
            Align(
              alignment:
                  isLandScape ? Alignment(-0.01, -0.65) : Alignment(0, -0.75),
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
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  isLandScape ? SizedBox(height: 5) : SizedBox(height: 25),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: ExactAssetImage("assets/images/edit2.png"),
                      ),
                    ),
                  ),
                  isLandScape
                      ? SizedBox(
                          height: 90,
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.width / 3.2),
                  Container(
                    margin: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      "محمد احمد علي",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    margin: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      "MohammedAli@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: isLandScape
                        ? EdgeInsets.only(left: 160, right: 160)
                        : EdgeInsets.only(left: 60, right: 60),
                    width: double.infinity,
                    height: isLandScape
                        ? MediaQuery.of(context).size.height / 2.5
                        : MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/bookmark.svg",
                            title: lan.getTexts("favorite"),
                            trailingg: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          buildListTileProfileSection(
                              lan.getTexts("settings"), Icons.settings),
                          buildListTileprofileElement(
                            iconimage: "assets/icons/translate.svg",
                            title: lan.getTexts("languages"),
                            trailingg: Container(
                              padding: EdgeInsets.only(right: 5),
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: _dropdonwbutton(),
                            ),
                          ),
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/text-font.svg",
                            title: lan.getTexts("font-size"),
                            trailingg: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 5, left: 10),
                                    child: Text(
                                      "14",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Image(
                                      color: Colors.blue,
                                      image: Svg("assets/icons/caret-down.svg"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/moon.svg",
                            title: lan.getTexts("dark-mode"),
                            trailingg: Switch(
                              value: Provider.of<ThemeProvider>(context,
                                      listen: true)
                                  .isSelected,
                              onChanged: (value) => Provider.of<ThemeProvider>(
                                      context,
                                      listen: false)
                                  .themeModeChange(value),
                              inactiveTrackColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                          ),
                          buildListTileProfileSection(
                            lan.getTexts("notifications"),
                            Icons.notification_important,
                          ),
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/lamp.svg",
                            title: lan.getTexts("breaking-news"),
                            trailingg: Switch(
                              value: false,
                              onChanged: (val) {
                                return val;
                              },
                              inactiveTrackColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                          ),
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/newspaper.svg",
                            title: lan.getTexts("last-news"),
                            trailingg: Switch(
                              value: false,
                              onChanged: (val) {
                                return val;
                              },
                              inactiveTrackColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                          ),
                          buildListTileprofileElement(
                            color: Colors.white,
                            iconimage: "assets/icons/sound.svg",
                            title: lan.getTexts("notifications-sound"),
                            trailingg: Container(
                                height: 80,
                                width: 120,
                                child: Slider(
                                  value: 0.6,
                                  onChanged: (val) {},
                                  inactiveColor: Colors.white,
                                  activeColor: Colors.amber,
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ChangetInfoProfile.routeName);
                            },
                            child: buildContainerEditInfo(
                              lan.getTexts("edit-profile-info"),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ChangePassword.routeName);
                            },
                            child: buildContainerEditInfo(
                              lan.getTexts("change-password"),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerEditInfo(
    String title,
  ) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(10),
      width: double.infinity,
      margin: EdgeInsets.only(left: 60, right: 60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }

  ListTile buildListTileprofileElement({
    String title,
    String iconimage,
    Widget trailingg,
    Color color,
  }) {
    return ListTile(
      leading: Image(
        color: color,
        image: Svg(
          iconimage,
          size: Size(30, 30),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      trailing: trailingg,
    );
  }

  ListTile buildListTileProfileSection(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      subtitle: Divider(
        height: 0,
        color: Colors.white,
        thickness: 2,
        endIndent: 120,
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  BuildContext context;
  RPSCustomPainter({this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color =Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.37, size.height * 0.15);
    path_0.quadraticBezierTo(size.width * 0.35, size.height * 0.25,
        size.width * 0.50, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.65, size.height * 0.25,
        size.width * 0.63, size.height * 0.15);
    path_0.quadraticBezierTo(size.width * 0.88, size.height * 0.13,
        size.width * 0.87, size.height * 0.25);
    path_0.cubicTo(size.width * 0.87, size.height * 0.42, size.width * 0.87,
        size.height * 0.74, size.width * 0.87, size.height * 0.90);
    path_0.cubicTo(size.width * 0.87, size.height * 0.97, size.width * 0.13,
        size.height * 0.98, size.width * 0.12, size.height * 0.90);
    path_0.cubicTo(size.width * 0.12, size.height * 0.74, size.width * 0.13,
        size.height * 0.31, size.width * 0.12, size.height * 0.25);
    path_0.quadraticBezierTo(size.width * 0.12, size.height * 0.13,
        size.width * 0.37, size.height * 0.15);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LRPSCustomPainter extends CustomPainter {
  BuildContext context;
  LRPSCustomPainter({this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Theme.of(context).primaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.42, size.height * 0.21);
    path_0.quadraticBezierTo(size.width * 0.44, size.height * 0.30,
        size.width * 0.50, size.height * 0.31);
    path_0.quadraticBezierTo(size.width * 0.56, size.height * 0.30,
        size.width * 0.57, size.height * 0.21);
    path_0.quadraticBezierTo(size.width * 0.88, size.height * 0.18,
        size.width * 0.88, size.height * 0.32);
    path_0.cubicTo(size.width * 0.87, size.height * 0.45, size.width * 0.88,
        size.height * 0.73, size.width * 0.88, size.height * 0.90);
    path_0.cubicTo(size.width * 0.88, size.height * 1.02, size.width * 0.10,
        size.height * 1.01, size.width * 0.13, size.height * 0.90);
    path_0.cubicTo(size.width * 0.13, size.height * 0.73, size.width * 0.12,
        size.height * 0.43, size.width * 0.13, size.height * 0.31);
    path_0.quadraticBezierTo(size.width * 0.13, size.height * 0.18,
        size.width * 0.42, size.height * 0.21);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
