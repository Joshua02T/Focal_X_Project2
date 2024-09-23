import 'package:flutter/material.dart';
import 'package:settings_focal_x/components/bottomnavbar.dart';
import 'package:settings_focal_x/components/consts.dart';
import 'package:settings_focal_x/components/recordcard.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  late bool status;
  late bool status1;
  late bool status2;
  late bool status3;
  late bool status4;

  @override
  void initState() {
    status = false;
    status1 = false;
    status2 = false;
    status3 = false;
    status4 = false;
    super.initState();
  }

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
                  _buildHeader(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                          screenHeight * 0.01, screenWidth * 0.05, 0),
                      child: Text('اليوم',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.04))),
                  buildRecordItem(
                    screenWidth,
                    screenHeight,
                    'قمت بالبحث عن مقالة لتعلم أساسيات تجربة المستخدم',
                    status1,
                    (val) => setState(() => status1 = val),
                  ),
                  buildRecordItem(
                    screenWidth,
                    screenHeight,
                    'قمت بالبحث عن احدث كتب البرمجة',
                    status2,
                    (val) => setState(() => status2 = val),
                  ),
                  buildRecordItem(
                    screenWidth,
                    screenHeight,
                    'قمت بحفظ مقال عن تعلم مبادئ تجربة المستخدم',
                    status3,
                    (val) => setState(() => status3 = val),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                        screenHeight * 0.01, screenWidth * 0.05, 0),
                    child: Text('2 تشرين الثاني 2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.04)),
                  ),
                  buildRecordItem(
                      screenWidth,
                      screenHeight,
                      'قمت بمشاركة خبر عن الذكاء الإصطناعي وكيف يعمل',
                      status4,
                      (val) => setState(() => status4 = val))
                ]))));
  }

  Widget _buildHeader() {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.fromLTRB(
            screenwidth * 0.02, screenheight * 0.001, screenwidth * 0.02, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Transform.translate(
              offset: Offset(screenwidth * 0.03, 0),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(arrowBackIcon,
                      size: screenwidth * 0.07, color: fontColor))),
          SizedBox(height: screenheight * 0.02),
          Text(
            'السجلات',
            style: TextStyle(
                fontSize: screenwidth * 0.05, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: screenheight * 0.01),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('تصفية',
                style: TextStyle(
                    fontSize: screenwidth * 0.04, fontWeight: FontWeight.w400)),
            IconButton(
                onPressed: () {},
                icon:
                    Icon(tuneIcon, color: fontColor, size: screenwidth * 0.07)),
            Text('حذف السجل',
                style: TextStyle(
                    fontSize: screenwidth * 0.04, fontWeight: FontWeight.w400)),
            IconButton(
                onPressed: () {},
                icon: Icon(deleteIcon,
                    color: fontColor, size: screenwidth * 0.07))
          ]),
          Transform.translate(
              offset: Offset(screenwidth * 0.034, 0),
              child: Row(children: [
                IconButton(
                  onPressed: () => setState(() {
                    status = !status;
                    status1 = status;
                    status2 = status;
                    status3 = status;
                    status4 = status;
                  }),
                  icon: status
                      ? const Icon(checkboxOutlineBlank, color: fontColor)
                      : const Icon(checkboxOutline, color: fontColor),
                ),
                Text('تحديد الجميع',
                    style: TextStyle(
                        fontSize: screenwidth * 0.04,
                        fontWeight: FontWeight.w400))
              ]))
        ]));
  }
}
