import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:water_trends_app/sceens/bottomNavigationBar_screen.dart';

class SignUp extends StatelessWidget {
  static String routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/image.png",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, top: 24),
                  height: 180,
                  width: double.infinity,
                  child: CustomPaint(
                    size: Size(800.0,
                        250.0), //You can Replace this with your desired WIDTH and HEIGHT
                    painter: RPSCustomPainter(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: w,
                  margin: EdgeInsets.only(left: 20),
                  child: CustomPaint(
                    size: Size(800.0,
                        500.0), //You can Replace this with your desired WIDTH and HEIGHT
                    painter: XRPSCustomPainter(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 180,
                  width: double.infinity,
                  child: CustomPaint(
                    size: Size(800.0,
                        250.0), //You can Replace this with your desired WIDTH and HEIGHT
                    painter: CRPSCustomPainter(),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Container(
                height: w / 2,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      padding: EdgeInsets.all(4),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 150),
                      child: Image.asset(
                        "assets/images/edit2.png",
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "تسجيل حساب جديد",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: w,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    buildContainertextfield("الاسم", "assets/icons/user.svg"),
                    Divider(
                      color: Colors.black,
                      height: 0,
                      thickness: 0.6,
                      endIndent: 50,
                      indent: 30,
                    ),
                    buildContainertextfield(
                        "البريد الالكتروني", "assets/icons/email.svg"),
                    Divider(
                      color: Colors.black,
                      height: 0,
                      thickness: 0.6,
                      endIndent: 50,
                      indent: 30,
                    ),
                    buildContainertextfield(
                        "رقم الجوال", "assets/icons/smartphone.svg"),
                    Divider(
                      color: Colors.black,
                      height: 0,
                      thickness: 0.6,
                      endIndent: 50,
                      indent: 30,
                    ),
                    buildContainertextfield(
                        "الرقم السري ", "assets/icons/padlock.svg"),
                    Divider(
                      color: Colors.black,
                      height: 0,
                      thickness: 0.6,
                      endIndent: 50,
                      indent: 30,
                    ),
                    buildContainertextfield(
                        "تاكيد الرقم السري", "assets/icons/padlock.svg"),
                    Divider(
                      color: Colors.black,
                      height: 0,
                      thickness: 0.6,
                      endIndent: 50,
                      indent: 30,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        "النوع",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          activeColor: Colors.black,
                          value: true,
                          groupValue: true,
                          onChanged: (val) {},
                        ),
                        Text(
                          "ذكر",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Radio(

                          activeColor: Colors.black,
                          value: true,
                          groupValue: true,
                          onChanged: (val) {},
                        ),
                        Text(
                          "انثي",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(BottomNBScreen.routeName);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        margin: EdgeInsets.only(left: 20, right: 200 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "التالي",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: w / 3.5,
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(left: 40, right: 25),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            image: Svg("assets/icons/facebook.svg"),
                          ),
                          Image(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            image: Svg(
                                "assets/icons/google-plus-logo-on-black-background.svg"),
                          ),
                          Image(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                            image: Svg("assets/icons/twitter.svg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      margin: EdgeInsets.only(left: 30, right: 230),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "دخول",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildContainertextfield(String hint, String icon) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 50),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          showCursor: false,
          decoration: InputDecoration(
            icon: Image(
              height: 24,
              width: 24,
              image: Svg(icon),
            ),
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

class XRPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color =  Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.00, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.00, size.height * 0.20,
        size.width * 0.00, size.height * 0.10);
    path_0.cubicTo(size.width * 0.00, size.height * 0.00, size.width * 0.70,
        size.height * 0.02, size.width * 0.75, size.height * 0.20);
    path_0.cubicTo(size.width * 0.80, size.height * 0.33, size.width * 0.80,
        size.height * 0.64, size.width * 0.75, size.height * 0.80);
    path_0.cubicTo(size.width * 0.70, size.height * 0.98, size.width * 0.00,
        size.height * 1.00, size.width * 0.00, size.height * 0.90);
    path_0.quadraticBezierTo(size.width * 0.00, size.height * 0.80,
        size.width * 0.00, size.height * 0.50);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.57, size.height * 1.23, size.width * 0.06, 0);
    path_0.quadraticBezierTo(size.width * 0.28, 0, size.width, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CRPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.30, size.height, size.width * 0.06, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.07, size.height * -0.13, size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
