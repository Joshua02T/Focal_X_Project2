import 'package:flutter/material.dart';
import 'package:settings_focal_x/components/bottomnavbar.dart';
import 'package:settings_focal_x/components/consts.dart';
import 'package:settings_focal_x/components/lists.dart';
import 'package:settings_focal_x/components/newslisttile.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            bottomNavigationBar: const CustonNavBar(),
            body: Container(
                color: backgroundColor,
                child: ListView(children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.01,
                          screenHeight * 0.001, screenWidth * 0.01, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(arrowBackIcon,
                                          size: screenWidth * 0.07,
                                          color: fontColor)),
                                  Text('الأخبار',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.w700)),
                                  PopupMenuButton(
                                      itemBuilder: (context) => [
                                            PopupMenuItem(
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context, 'records');
                                                    },
                                                    child: const Text('السجلات',
                                                        style: TextStyle(
                                                            color: fontColor))))
                                          ])
                                ]),
                            Center(
                                child: Text('4 من الملفات المحفوظة',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: screenWidth * 0.035))),
                            SizedBox(height: screenHeight * 0.003),
                            DefaultTabController(
                                length: 7,
                                child: Column(children: [
                                  TabBar(
                                      indicatorColor: indicatorColor,
                                      indicatorWeight: screenWidth * 0.002,
                                      dividerColor: backgroundColor,
                                      unselectedLabelStyle: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          fontFamily: 'Tajawal'),
                                      unselectedLabelColor: fontNoneActive,
                                      labelColor: fontColor,
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Tajawal"),
                                      labelPadding: EdgeInsets.symmetric(
                                          vertical: screenHeight * 0.004),
                                      tabs: const [
                                        Tab(text: 'جديد'),
                                        Tab(text: 'صحة'),
                                        Tab(text: 'اعمال'),
                                        Tab(text: 'سياحة'),
                                        Tab(text: 'تسويق'),
                                        Tab(text: 'رياضة'),
                                        Tab(text: 'ازياء')
                                      ]),
                                  SizedBox(height: screenHeight * 0.01),
                                  SizedBox(
                                      height: screenHeight * 0.68,
                                      child: TabBarView(children: [
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return CustomListTile(
                                                  image:
                                                      newsListTileItems[index]
                                                          ['image'],
                                                  mainText:
                                                      newsListTileItems[index]
                                                          ['mainText'],
                                                  secondText:
                                                      newsListTileItems[index]
                                                          ['secondText']);
                                            },
                                            itemCount:
                                                newsListTileItems.length),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container(),
                                        Container()
                                      ]))
                                ]))
                          ]))
                ]))));
  }
}
