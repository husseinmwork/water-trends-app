import 'package:flutter/material.dart';

class LastNewsData {
  final String imageUrl;
  final String newstitle;
  final String newsDate;
  final String Channel;
  final IconData Comment;
  final IconData See;

  LastNewsData({
    @required this.imageUrl,
    @required this.newstitle,
    @required this.newsDate,
    @required this.Channel,
    @required this.Comment,
    @required this.See,
  });
}

class TitleNews {
  final String imageUrl;
  final String newstitle;

  TitleNews({
    this.imageUrl,
    this.newstitle,
  });
}

class PageData {
  final String title;
  final String imageUrl;

  PageData({
    @required this.title,
    @required this.imageUrl,
  });
}

class CompanyGuidData {
  final String imageUrl;
  final String title;
  final int number;

  CompanyGuidData({
    @required this.imageUrl,
    @required this.title,
    @required this.number,
  });
}

class DrinkingWaterCompany {
  final String companyImage;
  final String companyName;
  final String title;
  final int companySee;

  DrinkingWaterCompany({
    @required this.companyImage,
    @required this.companyName,
    @required this.title,
    @required this.companySee,
  });
}
