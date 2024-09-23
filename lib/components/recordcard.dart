import 'package:flutter/material.dart';
import 'package:settings_focal_x/components/consts.dart';

Widget buildRecordItem(double screenWidth, double screenHeight, String title,
    bool status, Function(bool) onChanged) {
  return Column(children: [
    SizedBox(height: screenHeight * 0.015),
    Padding(
        padding: EdgeInsets.fromLTRB(
            screenWidth * 0.02, screenHeight * 0.005, screenWidth * 0.02, 0),
        child: Stack(children: [
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: backgroundCardColor,
              child: ListTile(
                  leading: Image.asset(personImage),
                  title: Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.04,
                          color: fontColor)),
                  trailing: Transform.translate(
                      offset: Offset(-(screenWidth * 0.03), 0),
                      child: PopupMenuButton(itemBuilder: (context) => [])))),
          Transform.translate(
              offset: Offset(screenWidth * 0.034, -screenWidth * 0.045),
              child: Row(children: [
                IconButton(
                    onPressed: () => onChanged(!status),
                    icon: status
                        ? const Icon(checkboxOutlineBlank, color: fontColor)
                        : const Icon(checkboxOutline, color: fontColor))
              ]))
        ])),
    SizedBox(height: screenHeight * 0.015)
  ]);
}
