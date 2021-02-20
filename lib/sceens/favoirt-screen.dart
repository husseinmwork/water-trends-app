import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:water_trends_app/widget/channel-news.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "FavoriteScreen";
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    List<LastNewsData> _lastNewsData = [
      LastNewsData(
        imageUrl: "assets/photos/5a29bf2fe34575.6992863715126853599309.png",
        newstitle: lan.getTexts("lastnews-news-channel-youm7"),
        Comment: Icons.comment,
        See: Icons.visibility,
        Channel: "assets/photos/8847-youm7logofixed.png",
        newsDate: lan.getTexts("date-news"),
      ),
      LastNewsData(
        imageUrl: "assets/photos/1596890106875113400.jpg",
        newstitle: lan.getTexts("lastnews-news-channel-alsharq"),
        Comment: Icons.comment,
        See: Icons.visibility,
        Channel: "assets/photos/logo_ar.png",
        newsDate: lan.getTexts("date-news"),
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
            lan.getTexts("favorite"),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal',
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage("assets/photos/Untitled.png")
            ),
          ),
          child: ListView(
            children: _lastNewsData.map(
              (item) {
                return ChannelNews(
                  imageUrl: item.imageUrl,
                  Channel: item.Channel,
                  Comment: item.Comment,
                  newsDate: item.newsDate,
                  newstitle: item.newstitle,
                  See: item.See,
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
