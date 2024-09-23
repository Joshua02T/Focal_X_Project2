import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:settings_focal_x/components/consts.dart';

class CustonNavBar extends StatefulWidget {
  const CustonNavBar({super.key});

  @override
  State<CustonNavBar> createState() => _CustonNavBarState();
}

class _CustonNavBarState extends State<CustonNavBar> {
  int theCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.02,
            vertical: MediaQuery.of(context).size.height * 0.02),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: fontNoneActive,
                width: MediaQuery.of(context).size.width * 0.0032,
              ),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.02),
                child: BottomNavigationBar(
                    onTap: (index) {
                      setState(() {
                        theCurrentIndex = index;
                      });
                    },
                    type: BottomNavigationBarType.fixed,
                    currentIndex: theCurrentIndex,
                    backgroundColor: Colors.white,
                    unselectedItemColor: fontNoneActive,
                    selectedItemColor: fontColor,
                    selectedLabelStyle: TextStyle(
                        color: fontColor,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Tajawal'),
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(
                            EvaIcons.homeOutline,
                            size: MediaQuery.of(context).size.width * 0.085,
                          ),
                          label: 'الرئيسية'),
                      BottomNavigationBarItem(
                          icon: Icon(
                            EvaIcons.globe,
                            size: MediaQuery.of(context).size.width * 0.085,
                          ),
                          label: 'اخبار'),
                      BottomNavigationBarItem(
                          icon: Icon(
                            EvaIcons.bookOpenOutline,
                            size: MediaQuery.of(context).size.width * 0.085,
                          ),
                          label: 'مقالات'),
                      BottomNavigationBarItem(
                          icon: Icon(
                            EvaIcons.headphonesOutline,
                            size: MediaQuery.of(context).size.width * 0.085,
                          ),
                          label: 'بودكاست'),
                      BottomNavigationBarItem(
                          icon: Icon(
                            EvaIcons.briefcaseOutline,
                            size: MediaQuery.of(context).size.width * 0.085,
                          ),
                          label: 'المتجر')
                    ]))));
  }
}
