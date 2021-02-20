import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class DetailsCompany extends StatelessWidget {
  static String routeName = "DetailsCompany";
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "السعودية",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/photos/Arabic-01.png")),
                ),
              ),
              Container(
                height: 90,
                width: double.infinity,
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: 40,
                      child: Text(
                        "شركة مياه نوفا متخصصة في تعبئة المياه الصحية",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Text(
                                  "3442323",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.visibility,
                                size: 25,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildContainerText(FontWeight.w500, 24, "مجالات العمل"),
              SizedBox(
                height: 16,
              ),
              buildContainerText(
                  FontWeight.w500, 18, "مياه الشرب-تنقية المياه-تعبئة المياه"),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 6,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      buildContainerText(FontWeight.w500, 24, "العنوان"),
                      buildContainerText(FontWeight.w500, 18,
                          "شنقيط-الملك فهد-الرياض12273-المملكة العربية السعودية"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "موقع الشركة",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.place,
                            size: 30,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 6,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      buildContainerText(
                          FontWeight.w500, 24, "المسؤل عن التواصل"),
                      buildContainerText(FontWeight.w500, 18, "م.محمد خليفة"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                height: 80,
                width: double.infinity,
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
                    buildColumnlogo("assets/icons/email.svg", "Email", context),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "قيم الشركة",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[900],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 6,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "اكتب تعليقك...",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                            icon: Icon(
                              Icons.send,
                              size: 40,
                              color: Colors.blue,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildListTileComment(context),
              Divider(
                color: Colors.black,
              ),
              buildListTileComment(context),
              Divider(
                color: Colors.black,
              ),
              buildListTileComment(context),
              Divider(
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Row(
                      children: [
                        buildContainerCall(
                            "assets/icons/smartphone.svg", Colors.amber),
                        SizedBox(
                          width: 20,
                        ),
                        buildContainerCall(
                            "assets/icons/email.svg", Colors.black),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        buildContainerCall(
                            "assets/icons/whatsapp.svg", Colors.blue),
                        SizedBox(
                          width: 20,
                        ),
                        buildContainerCall(
                            "assets/icons/twitter.svg", Colors.blueAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerCall(String image, Color color) {
    return Container(
      child: Row(
        children: [
          Image(
            height: 40,
            width: 40,
            color: color,
            image: Svg(image),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "098738898",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainerText(
      FontWeight fontweight, double sizeText, String text) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Tajawal',
          fontWeight: fontweight,
          fontSize: sizeText,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }

  Column buildColumnlogo(String image, String title, BuildContext context) {
    return Column(
      children: [
        Image(
          color: Theme.of(context).iconTheme.color,
          image: Svg(
            image,
            size: Size(40, 40),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );
  }

  ListTile buildListTileComment(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
        child: Icon(
          Icons.person,
          size: 40,
        ),
      ),
      title: Text(
        "ياسر محمد علي",
        style: TextStyle(
            fontFamily: "Tajawal", fontSize: 18, fontWeight: FontWeight.bold),
      ),
      trailing: Container(
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "10",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Image(
                  height: 30,
                  width: 30,
                  color: Theme.of(context).iconTheme.color,
                  image: Svg(
                    "assets/icons/like.svg",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "10",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Image(
                  height: 30,
                  width: 30,
                  color: Theme.of(context).iconTheme.color,
                  image: Svg("assets/icons/thumb-down.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
      subtitle: Text(
        "خبر جيد يرجى تزويدنا بمثل هذه الاخبار",
        style: TextStyle(
            fontFamily: "Tajawal", fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
