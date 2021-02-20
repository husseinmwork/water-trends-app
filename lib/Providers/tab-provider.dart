import 'package:flutter/material.dart';
import 'package:water_trends_app/widget/Water-desalination.dart';
import 'package:water_trends_app/widget/Water-filters.dart';
import 'package:water_trends_app/widget/drinking-water.dart';
import 'package:water_trends_app/widget/water-treatment.dart';
import '../widget/latest_news.dart';
import '../widget/most_read.dart';
import 'package:water_trends_app/widget/title_news.dart';

class TabProvider with ChangeNotifier{

   int tabIndex = 0 ;
   int tabIndexCompanyGuid = 0 ;

  // ignore: missing_return
  Widget tabWidget() {
   
    if (tabIndex == 0) {
    
         return LastNews();
    }
    if (tabIndex == 1) {
      return MostRead();
    }
    if (tabIndex == 2) {
       return TitleNewsPage();
    }
  }

    Widget tabWidgetCompanyGuid() {
   
    if (tabIndexCompanyGuid == 0) {
      return DrinkingWater();
    }
    else if (tabIndex == 1) {
      return WaterTreatment();
    }
    else if (tabIndex == 2) {
      return WaterFilters();
    }
     else {
      return WaterDesalination();
    }

   
  }
  
}