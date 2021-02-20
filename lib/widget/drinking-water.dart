import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/models/homepagedata.dart';
import 'package:water_trends_app/widget/DrinkingWatercompanydata.dart';

class DrinkingWater extends StatelessWidget {
  List<DrinkingWaterCompany> _drinkingWaterCompany;

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    _drinkingWaterCompany = [
      DrinkingWaterCompany(
        companyImage: "assets/photos/Arabic-01.png",
        companyName: lan.getTexts("company-nova"),
        title: "الرياض-جدة",
        companySee: 32973,
      ),
      DrinkingWaterCompany(
        companyImage:
            "assets/photos/67419418_113225486676935_1733311490561146880_n.jpg",
        companyName: lan.getTexts("company-ogen"),
        title: "الرياض-جدة",
        companySee: 32973,
      ),
       DrinkingWaterCompany(
        companyImage: "assets/photos/Arabic-01.png",
        companyName: lan.getTexts("company-nova"),
        title: "الرياض-جدة",
        companySee: 32973,
      ),
  
    ];
    return Scaffold(
      body: ListView(
        children: _drinkingWaterCompany.map((e) {
            return DrinkingWatercompanydata(
              companyImage: e.companyImage,
              companyName: e.companyName,
              companySee: e.companySee,
              title: e.title,
            );
          }).toList(),
        
      ),
    );
  }
}
