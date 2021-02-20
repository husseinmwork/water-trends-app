import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:water_trends_app/sceens/details-companyNews-screen.dart';

class CompanyNews extends StatelessWidget {
  static String routeName = "CompanyNews";
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    List<PageData> _companynews = [
      PageData(
        title: lan.getTexts("company-nova"),
        imageUrl: "assets/photos/Arabic-01.png",
      ),
      PageData(
        title: lan.getTexts("company-ogen"),
        imageUrl:
            "assets/photos/67419418_113225486676935_1733311490561146880_n.jpg",
      ),
      PageData(
        title: lan.getTexts("company-ogen"),
        imageUrl:
            "assets/photos/67419418_113225486676935_1733311490561146880_n.jpg",
      ),
      PageData(
        title: lan.getTexts("company-ogen"),
        imageUrl:
            "assets/photos/67419418_113225486676935_1733311490561146880_n.jpg",
      ),
    ];
    return Directionality(
      textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
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
            lan.getTexts("company-news"),
            style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal',
              fontSize: 24,
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
        body: ListView(
          children: _companynews.map((item) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(DetailsCompanyNews.routeName);
              },
              child: Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(left: 50, right: 50, top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2),
                        image: DecorationImage(
                          image: ExactAssetImage(item.imageUrl),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      lan.getTexts("company-nova"),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Tajawal'),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
