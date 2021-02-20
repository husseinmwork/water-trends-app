import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';

class DetailsCompanyNews extends StatelessWidget {
  static String routeName = "DetailsCompanyNews";
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
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
            style: Theme.of(context).textTheme.bodyText1,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                      image: DecorationImage(
                        image: ExactAssetImage("assets/photos/Arabic-01.png"),
                      ),
                    ),
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
              buildContainer(context, "البطولة السعودية لمحترفي الكولف"),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/photos/unnamed.jpg"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Text(
                  ''' في حدث عالمي جديد في المملكة نضم الاتحاد السعودي للكولف البطولة السعودية لمحترفي الكولف ةهي احدث محطة عالمية ضمن بطولة الجولات الاوربية ومشاركه ابرز الابطال العالميين ''',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.start,
                ),
              ),
              buildContainer(context, "اليوم العالمي للمشي"),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/photos/رياضة-المشي.jpg"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Text(
                  ''' في حدث عالمي جديد في المملكة نضم الاتحاد السعودي للكولف البطولة السعودية لمحترفي الكولف ةهي احدث محطة عالمية ضمن بطولة
                   الجولات الاوربية ومشاركه ابرز الابطال العالميين
                   لجولات الاوربية ومشاركه ابرز الابطال العالميين
                   لجولات الاوربية ومشاركه ابرز الابطال العالميين ''',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 3,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
