import 'package:flutter/material.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class TitleNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    List _titlenewsInfo = [
      TitleNews(
        imageUrl: "assets/photos/anderson-rian-klwak-FdEiA-unsplash.jpg",
        newstitle: lan.getTexts("page-view-news"),
      ),
      TitleNews(
        imageUrl: "assets/photos/Detailnano200617101649.jpg",
        newstitle: lan.getTexts("page-view-news"),
      ),
      TitleNews(
        imageUrl: "assets/photos/adrien-wodey-_L_AkABEnmI-unsplash.jpg",
        newstitle: lan.getTexts("page-view-news"),
      ),
      TitleNews(
        imageUrl: "assets/photos/WaterPurificationTechnologies25.jpg",
        newstitle: lan.getTexts("page-view-news"),
      ),
    ];
    return Directionality(
      textDirection: lan.isEn ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: ListView(
          children: _titlenewsInfo.map(
            (item) {
              return Container(
                width: double.infinity,
                height: 240,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: ExactAssetImage("${item.imageUrl}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment(0, 0.95),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[600].withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item.newstitle.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
