import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/services.dart';
import 'package:water_trends_app/sceens/signup-screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
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
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 150,
                  width: w,
                  child: CustomPaint(
                    painter: RPSCustomPainter(),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  height: h * 0.60,
                  width: double.infinity,
                  child: CustomPaint(
                    size: Size(600.0, 500.0),
                    //You can Replace this with your desired WIDTH and HEIGHT
                    painter: CRPSCustomPainter(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 180,
                  child: CustomPaint(
                    size: Size(400.0, 400.0),
                    //You can Replace this with your desired WIDTH and HEIGHT
                    painter: RRRPSCustomPainter(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 150),
                  child: Image.asset(
                    "assets/images/edit2.png",
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal'),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 420,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 80, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "البريد",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: TextFormField(
                          showCursor: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            hintText: "Info@aseed.com",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        height: 0,
                        thickness: 1.0,
                        endIndent: 50,
                        indent: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الرقم السري",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image(
                            height: 25,
                            width: 25,
                            color: Colors.white,
                            image: Svg("assets/icons/padlock.svg"),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: TextFormField(
                          showCursor: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            hintText: "**********",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        height: 0,
                        thickness: 1.0,
                        endIndent: 50,
                        indent: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "نسيت الرقم السري؟",
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        height: 0,
                        thickness: 1.0,
                        indent: 130,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        margin: EdgeInsets.only(left: 100, right: 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "الدخول",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(SignUp.routeName);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 15),
                          alignment: Alignment.center,
                          child: Text(
                            "تسجيل حساب جديد",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        height: 0,
                        thickness: 1.0,
                        endIndent: 80,
                        indent: 70,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 210,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "الدخول ب",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 140),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              height: 35,
                              width: 35,
                              color: Colors.white,
                              image: Svg("assets/icons/facebook.svg"),
                            ),
                            Image(
                              height: 35,
                              width: 35,
                              color: Colors.white,
                              image: Svg(
                                  "assets/icons/google-plus-logo-on-black-background.svg"),
                            ),
                            Image(
                              height: 35,
                              width: 35,
                              color: Colors.white,
                              image: Svg("assets/icons/twitter.svg"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        margin: EdgeInsets.only(left: 120, right: 120),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "الدخول كزائر",
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
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(size.width * 0.69, 0, size.width * 0.83, 0);
    path_0.quadraticBezierTo(
        size.width * 0.47, size.height * 1.26, 0, size.height);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RRRPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(size.width * 0.88, size.height);
    path_0.quadraticBezierTo(size.width * 0.87, size.height * -0.20, 0, 0);
    path_0.quadraticBezierTo(0, size.height * 0.25, 0, size.height);
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
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.16, size.height * 0.47);
    path_0.quadraticBezierTo(size.width * 0.16, size.height * 0.27,
        size.width * 0.21, size.height * 0.20);
    path_0.cubicTo(size.width * 0.37, size.height * 0.00, size.width * 0.96, 0,
        size.width * 0.96, size.height * 0.10);
    path_0.quadraticBezierTo(size.width * 0.96, size.height * 0.20,
        size.width * 0.96, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.96, size.height * 0.71,
        size.width * 0.96, size.height * 0.80);
    path_0.cubicTo(size.width * 0.96, size.height * 0.92, size.width * 0.33,
        size.height * 0.88, size.width * 0.21, size.height * 0.74);
    path_0.quadraticBezierTo(size.width * 0.16, size.height * 0.68,
        size.width * 0.16, size.height * 0.47);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
