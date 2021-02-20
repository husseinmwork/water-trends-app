import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/widget/maindrawer.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
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
          title: Text(
            lan.getTexts("video-screen"),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Tajawal',
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: buildIconAppbar(context, Icons.list),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(
                              "assets/photos/3dlat.com_06_18_d3f9_17155c9ef9173.jpg"),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 60, left: 20, right: 20, bottom: 60),
                        child: CircleAvatar(
                          backgroundColor: Colors.white60,
                          child: Icon(
                            Icons.arrow_left,
                            size: 70,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      child: Text(
                        "بلفيديو شاهد اخر مراحل خطوات تحلية مياه الامطار وجعلها صالحة للشرب",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/photos/8847-youm7logofixed.png"),
                          Text(
                            "الاربعاء 23 مارس",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
