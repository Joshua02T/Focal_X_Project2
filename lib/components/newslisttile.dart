import 'package:flutter/material.dart';
import 'package:settings_focal_x/components/consts.dart';

class CustomListTile extends StatefulWidget {
  final String image, mainText, secondText;

  const CustomListTile(
      {super.key,
      required this.image,
      required this.mainText,
      required this.secondText});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  late bool isAddedToFavorite;

  @override
  void initState() {
    isAddedToFavorite = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: screenWidth * 0.024),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.024),
              child: Image.asset(widget.image)),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('UXpin',
                        style: TextStyle(
                            fontSize: screenWidth * 0.037,
                            fontWeight: FontWeight.w700,
                            color: seconderyFontColor)),
                    PopupMenuButton(itemBuilder: (context) => [])
                  ],
                ),
                Text(widget.mainText,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.034,
                        letterSpacing: screenWidth * 0.0023)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.secondText,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.03)),
                      Row(children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isAddedToFavorite = !isAddedToFavorite;
                              });
                            },
                            icon: isAddedToFavorite
                                ? Icon(starIcon,
                                    color: indicatorColor,
                                    size: screenWidth * 0.045)
                                : Icon(starBorderIcon,
                                    color: indicatorColor,
                                    size: screenWidth * 0.045)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(shareIcon, size: screenWidth * 0.045))
                      ])
                    ])
              ]))
        ]));
  }
}
