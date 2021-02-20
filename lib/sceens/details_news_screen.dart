import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:water_trends_app/widget/customdropdown.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:provider/provider.dart';

class DetailsNews extends StatelessWidget {
  static String routeName = "DetailsNews";

  Widget buildContainerAppbar(String image, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image(
        color: Colors.white,
        image: Svg(
          image,
          size: Size(30, 30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);

    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actions: [
            CustomDropdown(),
            buildContainerAppbar("assets/icons/website.svg", context),
            buildContainerAppbar("assets/icons/bookmark.svg", context),
            buildContainerAppbar("assets/icons/share (1).svg", context),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Theme.of(context).canvasColor),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: ExactAssetImage("assets/photos/home.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  lan.getTexts("text1-screendetails"),
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: ExactAssetImage("assets/photos/hqdefault.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  lan.getTexts("text2-screendetails"),
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                height: 80,
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
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  lan.getTexts("comments"),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.start,
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
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            height: 70,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.only(
                right: 10,
              ),
              margin: EdgeInsets.only(top: 15, bottom: 15, right: 40, left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewPadding.bottom,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "اكتب تعليقك...",
                    hintStyle: TextStyle(
                      height: 1.2,
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    suffixIcon: Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.blue,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
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
        style: TextStyle(fontFamily: "Tajawal"),
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
        "ياسر محمد علي",
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
}
