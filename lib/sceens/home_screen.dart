import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/tab-provider.dart';
import 'package:water_trends_app/sceens/favoirt-screen.dart';
import 'package:water_trends_app/widget/maindrawer.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
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
          body: Column(
            children: [
              Container(
                color: Colors.white,
                child: Card(
                  elevation: 10,
                  child: TabBar(
                    isScrollable: false,
                    onTap: (index) {
                      setState(() {
                        Provider.of<TabProvider>(context, listen: false)
                            .tabIndex = index;
                      });
                    },
                    labelPadding: EdgeInsets.all(10),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.black,
                    tabs: [
                      Text(
                        lan.getTexts("last-news"),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        lan.getTexts("more-read-news"),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        lan.getTexts("title-news"),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Provider.of<TabProvider>(context, listen: false)
                    .tabWidget(),
              ),
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
