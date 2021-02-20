import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/sceens/favoirt-screen.dart';
import 'package:water_trends_app/widget/maindrawer.dart';

class SourceCountry extends StatefulWidget {
  static String routeName = "SourceCountry";

  @override
  _SourceCountryState createState() => _SourceCountryState();
}

class _SourceCountryState extends State<SourceCountry> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
         key: _drawerKey,
          drawer: MainDrawer(),
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            leading: Container(
              child: Row(
                children: [
                  IconButton(
                    icon: buildIconAppbar(context, Icons.list),
                    onPressed: () => _drawerKey.currentState.openDrawer(),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(FavoriteScreen.routeName);
                      },
                      child: buildIconAppbar(context, Icons.bookmark),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              buildIconAppbar(context, Icons.search),
              SizedBox(
                width: 10,
              ),
              buildIconAppbar(context, Icons.settings),
              SizedBox(
                width: 8,
              ),
            ],
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
          ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 120, right: 120),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  lan.getTexts("saudi"),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
              
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
              buildContainerSource(
                "assets/photos/WhatsApp-Image-2019-07-22-at-8.33.49-PM.jpg",
                "سبق",
                "صحيفة سعودية",
              ),
            ],
          ),
        ),
        floatingActionButton: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          elevation: 5,
          child: Container(
            margin: EdgeInsets.only(left: 110, right: 110),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            child: Text(
              "اختر دولة اخرى",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainerSource(
    String image,
    String title,
    String subtitle,
  ) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20 , bottom: 10),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(image),
                ),
              ),
            ),
            Container(
              width: 140,
              height: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "متابعة",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
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

  Icon buildIconAppbar(BuildContext context, IconData icon) {
    return Icon(
      icon,
      size: 30,
      color: Colors.white,
    );
  }
}
