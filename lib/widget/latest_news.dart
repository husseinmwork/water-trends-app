import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:water_trends_app/widget/channel-news.dart';

class LastNews extends StatefulWidget {
  @override
  _LastNewsState createState() => _LastNewsState();
}

class _LastNewsState extends State<LastNews> {
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(
      keepPage: true,
      initialPage: 0,
      viewportFraction: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

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
      LastNewsData(
        imageUrl: "assets/photos/home.jpg",
        newstitle: lan.getTexts("lastnews-news-channel-assea"),
        Comment: Icons.comment,
        See: Icons.visibility,
        Channel: "assets/photos/94cce36e3cbc0d6349c2b5446ce7eef7.png",
        newsDate: lan.getTexts("date-news"),
      ),
    ];

    List<PageData> _pageviewdata = [
      PageData(
        imageUrl: "assets/photos/anderson-rian-klwak-FdEiA-unsplash.jpg",
        title: lan.getTexts("page-view-news"),
      ),
      PageData(
        imageUrl: "assets/photos/daniele-levis-pelusi-BFE2VdVePOI-unsplash.jpg",
        title: lan.getTexts("page-view-news"),
      ),
    ];
    return Directionality(
      textDirection: lan.isEn ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.width / 2,
              width: double.infinity,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PageView(
                  pageSnapping: true,
                  reverse: false,
                  controller: _pageController,
                  children: _pageviewdata.map(
                    (item) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: ExactAssetImage("${item.imageUrl}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment(0, 1),
                                child: Container(
                                  height: 140,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              _pageController.previousPage(
                                                duration:
                                                    Duration(milliseconds: 400),
                                                curve: Curves.easeIn,
                                              );
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Colors.blue[800],
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _pageController.nextPage(
                                                duration:
                                                    Duration(milliseconds: 400),
                                                curve: Curves.easeIn,
                                              );
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Colors.blue[800],
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[600]
                                                .withOpacity(0.7),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            item.title,
                                            textAlign: TextAlign.center,
                                           style: TextStyle(
//                                             fontFamily: 'Tajawal',
                                             fontSize: 18
                                           ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: isLandScape ? 70 : MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        lan.getTexts("last-page-breaking-news"),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.99,
                    ),
                    Text(
                      lan.getTexts("last-newspage-urgent"),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ..._lastNewsData.map(
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
          ],
        ),
      ),
    );
  }
}
