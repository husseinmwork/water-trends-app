import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/sceens/favoirt-screen.dart';
import 'package:water_trends_app/sceens/source-country-screen.dart';
import 'package:water_trends_app/widget/maindrawer.dart';

class ChooseSourceScreen extends StatefulWidget {
  @override
  _ChooseSourceScreenState createState() => _ChooseSourceScreenState();
}

class _ChooseSourceScreenState extends State<ChooseSourceScreen> {
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
                      Navigator.of(context).pushNamed(FavoriteScreen.routeName);
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
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 90, right: 90),
                  decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: ExactAssetImage("assets/images/edit2.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                buildContainerSource(
                  "assets/photos/848933_0.jpg",
                  lan.getTexts("egypt"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SourceCountry.routeName);
                  },
                  child: buildContainerSource(
                    "assets/photos/flag-of-saudi-arabia.jpg",
                    lan.getTexts("saudi"),
                  ),
                ),
                buildContainerSource(
                  "assets/photos/Unknown.png",
                  lan.getTexts("palestine"),
                ),
                buildContainerSource(
                  "assets/photos/images.png",
                  lan.getTexts("turkey"),
                ),
                buildContainerSource(
                  "assets/photos/320893_0.jpg",
                  lan.getTexts("iraq"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerSource(
    String image,
    String country,
  ) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(image),
                ),
              ),
            ),
            Container(
              width: 120,
              height: double.infinity,
              padding: EdgeInsets.all(10),
              child: Text(
                country,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {},
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
