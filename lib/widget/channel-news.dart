import 'package:flutter/material.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/sceens/details_news_screen.dart';

class ChannelNews extends StatefulWidget {
  final String imageUrl;
  final String newstitle;
  final String newsDate;
  final String Channel;
  final IconData Comment;
  final IconData See;

  ChannelNews({
    this.imageUrl,
    this.newstitle,
    this.newsDate,
    this.Channel,
    this.Comment,
    this.See,
  });

  @override
  _ChannelNewsState createState() => _ChannelNewsState();
}

class _ChannelNewsState extends State<ChannelNews> {
  bool isfavorite = true;

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.rtl : TextDirection.ltr,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(DetailsNews.routeName);
        },
        child: Container(
          height: 130,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.newsDate.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            child: Image.asset(widget.Channel),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Text(
                          widget.newstitle,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 20,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "333",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.blue,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "333",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isfavorite = !isfavorite;
                                  });
                                },
                                icon: isfavorite
                                    ? Icon(
                                        Icons.bookmark,
                                        color: Colors.amber[800],
                                      )
                                    : Icon(
                                        Icons.bookmark_border,
                                        color: Colors.amber[800],
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: ExactAssetImage(widget.imageUrl.toString()),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
