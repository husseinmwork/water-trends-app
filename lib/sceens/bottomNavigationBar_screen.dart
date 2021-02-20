import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import '../sceens/choose_source_screen.dart';
import '../sceens/company_guid_screen.dart';
import '../sceens/home_screen.dart';
import '../sceens/profile_screen.dart';
import '../sceens/video_screen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class BottomNBScreen extends StatefulWidget {
  static String routeName = "BottomNBScreen";
  @override
  _BottomNBScreenState createState() => _BottomNBScreenState();
}

class _BottomNBScreenState extends State<BottomNBScreen> {
  List<Widget> _pages = [
    ChooseSourceScreen(),
    CompanyGuideScreen(),
    HomeScreen(),
    VideoScreen(),
    ProfileScreen(),
  ];

  int _selectedPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          iconSize: 25,
          elevation: 5,
          onTap: (index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
          items: [
            buildBottomNavigationBarItem(
              context,
              "assets/icons/select.svg",
              lan.getTexts("choose-source").toString(),
            ),
            buildBottomNavigationBarItem(
              context,
              "assets/icons/evidence.svg",
              lan.getTexts("company-guid-screen").toString(),
            ),
            buildBottomNavigationBarItem(
              context,
              "assets/icons/home.svg",
              lan.getTexts("home-screen").toString(),
            ),
            buildBottomNavigationBarItem(
              context,
              "assets/icons/video-player.svg",
              lan.getTexts("video-screen").toString(),
            ),
            buildBottomNavigationBarItem(
              context,
              "assets/icons/user.svg",
              lan.getTexts("account-screen").toString(),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      BuildContext context, String image, String title) {
    return BottomNavigationBarItem(
      backgroundColor: Theme.of(context).primaryColor,
      icon: Image(
        image: Svg(
          image,
          color: Colors.white,
          size: Size(20, 20),
        ),
      ),
      label: title,
    );
  }
}
