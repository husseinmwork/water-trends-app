import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/Providers/tab-provider.dart';

class TabBarCompanyGuid extends StatefulWidget {
  static String routeName = "TabBarCompanyGuid";
  @override
  _TabBarCompanyGuidState createState() => _TabBarCompanyGuidState();
}

class _TabBarCompanyGuidState extends State<TabBarCompanyGuid> {
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              lan.getTexts("company-guid-screen"),
              style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
              ),
            ),
            centerTitle: true,
            actions: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  child: TabBar(
                    isScrollable: false,
                    onTap: (index) {
                      setState(() {
                        Provider.of<TabProvider>(context, listen: false)
                            .tabIndexCompanyGuid = index;
                      });
                    },
                    labelPadding: EdgeInsets.all(10),
                    indicatorColor: Theme.of(context).primaryColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 5,
                    labelColor: Colors.black,
                    tabs: [
                      Text(
                        lan.getTexts(
                          "drinking-water",
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                      Text(
                        lan.getTexts(
                          "water-treatment",
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                      Text(
                        lan.getTexts(
                          "Water-filters",
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                      Text(
                        lan.getTexts("Water-desalination"),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Provider.of<TabProvider>(context, listen: false)
                    .tabWidgetCompanyGuid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
