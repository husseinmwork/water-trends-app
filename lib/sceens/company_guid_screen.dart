import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:water_trends_app/sceens/add-company-data-screen.dart';
import 'package:water_trends_app/sceens/tabbar-company-guid.dart';

class CompanyGuideScreen extends StatefulWidget {
  @override
  _CompanyGuideScreenState createState() => _CompanyGuideScreenState();
}

class _CompanyGuideScreenState extends State<CompanyGuideScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    List<CompanyGuidData> _country = [
      CompanyGuidData(
        imageUrl: "assets/photos/848933_0.jpg",
        title: lan.getTexts("egypt"),
        number: 1291,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/flag-of-saudi-arabia.jpg",
        title: lan.getTexts("saudi"),
        number: 1291,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/Unknown.png",
        title: lan.getTexts("palestine"),
        number: 1291,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/images.png",
        title: lan.getTexts("turkey"),
        number: 1291,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/320893_0.jpg",
        title: lan.getTexts("iraq"),
        number: 1291,
      ),
    ];
    List<CompanyGuidData> _guid = [
      CompanyGuidData(
        imageUrl: "assets/photos/1596890106875113400.jpg",
        title: "مياه الشرب",
        number: 121212,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/3dlat.com_06_18_d3f9_17155c9ef9173.jpg",
        title: "تنقية المياه",
        number: 121212,
      ),
      CompanyGuidData(
        imageUrl: "assets/photos/1596890106875113400.jpg",
        title: "معالجة المياه",
        number: 121212,
      ),
    ];
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(null),
          title: Text(
            lan.getTexts("company-guid-screen"),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
                color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: ExactAssetImage("assets/photos/hqdefault.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AddCompanyData.routeName);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 70, right: 70),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      lan.getTexts("add-company-data"),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black : Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      lan.getTexts("country"),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      lan.getTexts("field"),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: isSelected
                  ? ListView(
                      children: _guid.map((item) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              leading: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(TabBarCompanyGuid.routeName);
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  child: ClipOval(
                                    child: Image.asset(
                                      item.imageUrl,
                                      fit: BoxFit.fill,
                                      width: 60,
                                      height: 80,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(
                                "${item.title}",
                                style: TextStyle(fontSize: 20),
                              ),
                              trailing: Text(
                                "${item.number}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    )
                  : ListView(
                      children: _country.map((item) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                child: ClipOval(
                                  child: Image.asset(
                                    item.imageUrl,
                                    fit: BoxFit.fill,
                                    width: 60,
                                    height: 80,
                                  ),
                                ),
                              ),
                              title: Text(
                                "${item.title}",
                                style: TextStyle(fontSize: 20),
                              ),
                              trailing: Text(
                                "${item.number}",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
