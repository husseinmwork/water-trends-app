import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/sceens/details-company-screen.dart';

class DrinkingWatercompanydata extends StatelessWidget {
  final String companyImage;
  final String companyName;
  final String title;
  final int companySee;

  DrinkingWatercompanydata({
    @required this.companyImage,
    @required this.companyName,
    @required this.title,
    @required this.companySee,
  });
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Directionality(
      textDirection: lan.isEn ? TextDirection.rtl : TextDirection.ltr,
      child: InkWell(
        onTap: () {},
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(
                                      Icons.visibility,
                                      color: Colors.blue,
                                      size: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    child: Text(
                                      companySee.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 120,
                            width: 150,
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    companyName,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "عرض البيانات",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Divider(
                                  thickness: 3,
                                  color: Colors.blue,
                                  height: 8,
                                  endIndent: 0,
                                  indent: 70,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(DetailsCompany.routeName);
                },
                              child: Container(
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2),
                    image: DecorationImage(
                        image: ExactAssetImage(companyImage.toString()),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
