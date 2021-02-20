import 'package:flutter/material.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/Providers/tab-provider.dart';
import 'package:water_trends_app/Providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/sceens/about-application-screen.dart';
import 'package:water_trends_app/sceens/add-company-data-screen.dart';
import 'package:water_trends_app/sceens/bottomNavigationBar_screen.dart';
import 'package:water_trends_app/sceens/callUs-screen.dart';
import 'package:water_trends_app/sceens/change-account-info-screen.dart';
import 'package:water_trends_app/sceens/change-password-screen.dart';
import 'package:water_trends_app/sceens/company-news-screen.dart';
import 'package:water_trends_app/sceens/condition-screen.dart';
import 'package:water_trends_app/sceens/details-company-screen.dart';
import 'package:water_trends_app/sceens/details-companyNews-screen.dart';
import 'package:water_trends_app/sceens/favoirt-screen.dart';
import 'package:water_trends_app/sceens/notifications-screen.dart';
import 'package:water_trends_app/sceens/privacy-policy-screen.dart';
import 'package:water_trends_app/sceens/tabbar-company-guid.dart';
import 'package:water_trends_app/sceens/details_news_screen.dart';
import 'package:water_trends_app/sceens/first_screen.dart';
import 'package:water_trends_app/sceens/signup-screen.dart';
import 'package:water_trends_app/sceens/source-country-screen.dart';
import 'package:water_trends_app/sceens/we-screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TabProvider>(
          create: (context) => TabProvider(),
        ),
        ChangeNotifierProvider<LanguageProvider>(
          create: (context) => LanguageProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tm = Provider.of<ThemeProvider>(context, listen: true).tm;
    return MaterialApp(
      themeMode: tm,
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        canvasColor: Colors.white70,
        buttonColor: Colors.white,
        shadowColor: Colors.white60,
        cardColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
          showUnselectedLabels: true,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Tajawal',
              ),
              headline2: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Tajawal',
              ),
              // TextStyle of icons;
              bodyText2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.white,
                fontFamily: 'Tajawal',
              ),
              headline1: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.amber,
        canvasColor: Colors.white10,
        buttonColor: Colors.white,
        shadowColor: Colors.white60,
        cardColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
          showUnselectedLabels: true,
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: 'Tajawal',
              ),
              // TextStyle of icons;
              bodyText2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.white,
                fontFamily: 'Tajawal',
              ),
              headline1: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontFamily: 'Tajawal',
              ),
              headline2: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Tajawal',
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FirstScreen(),
        DetailsNews.routeName: (context) => DetailsNews(),
        ChangetInfoProfile.routeName: (context) => ChangetInfoProfile(),
        ChangePassword.routeName: (context) => ChangePassword(),
        SourceCountry.routeName: (context) => SourceCountry(),
        SignUp.routeName: (context) => SignUp(),
        BottomNBScreen.routeName: (context) => BottomNBScreen(),
        TabBarCompanyGuid.routeName: (context) => TabBarCompanyGuid(),
        AddCompanyData.routeName: (context) => AddCompanyData(),
        DetailsCompany.routeName: (context) => DetailsCompany(),
        DetailsCompanyNews.routeName: (context) => DetailsCompanyNews(),
        CompanyNews.routeName: (context) => CompanyNews(),
        FavoriteScreen.routeName: (context) => FavoriteScreen(),
        WeScreen.routeName: (context) => WeScreen(),
        AboutApplication.routeName: (context) => AboutApplication(),
        PrivacyPolicy.routeName: (context) => PrivacyPolicy(),
        ConditionScreen.routeName: (context) => ConditionScreen(),
        NotificationsScreen.routeName: (context) => NotificationsScreen(),
        CallUsScreen.routeName: (context) => CallUsScreen(),
      },
    );
  }
}
