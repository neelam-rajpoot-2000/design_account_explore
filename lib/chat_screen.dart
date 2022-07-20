import 'package:design_account_explore/Constants/color_constants.dart';
import 'package:design_account_explore/Constants/icon_constants.dart';
import 'package:design_account_explore/Constants/string_constants.dart';
import 'package:design_account_explore/Constants/style.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List item = [
    {
      'title': StringConstants.harryText,
      'imageUrl': 'assets/man.jpg',
    },
    {
      'title': StringConstants.jackText,
      'imageUrl': 'assets/man1.jpg',
    },
    {
      'title': StringConstants.annText,
      'imageUrl': 'assets/girl.jpg',
    },
    {
      'title': StringConstants.millieText,
      'imageUrl': 'assets/gi.jpg',
    },
    {
      'title': StringConstants.jackText,
      'imageUrl': 'assets/man.jpg',
    },
    {
      'title': StringConstants.harryText,
      'imageUrl': 'assets/man1.jpg',
    }
  ];

  final List item1 = [
    {
      'title': StringConstants.tennisText,
      'imageUrl': 'assets/man.jpg',
      'title2': StringConstants.twText,
      'title1': StringConstants.jesText,
      'subtitle': StringConstants.haveText,
    },
    {
      'title': StringConstants.fishingText,
      'imageUrl': 'assets/girl.jpg',
      'title2': StringConstants.twText,
      'title1': StringConstants.jessText,
      'subtitle': StringConstants.iText,
    },
    {
      'title': StringConstants.tennisText,
      'imageUrl': 'assets/gi.jpg',
      'title2': StringConstants.tweText,
      'title1': StringConstants.ingaText,
      'subtitle': StringConstants.tText,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    IconConstants.arrowForwardHalf,
                    height: 45,
                    width: 40,
                    color: ColorConstants.darkBlueColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        StringConstants.messageText,
                        style: AppStyles.whiteSemiBoldFont,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: item.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCardViewWidget(
                      imageUrl: item[index]['imageUrl'],
                      title: item[index]['title'],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                  itemCount: item1.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCardView(
                      index: index,
                      imageUrl: item1[index]['imageUrl'],
                      title: item1[index]['title'],
                      title2: item1[index]['title2'],
                      subtitle: item1[index]['subtitle'],
                      title1: item1[index]['title1'],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Direction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: ColorConstants.GreyColor,
        iconSize: 35,
      ),
    );
  }

  _buildCardViewWidget({required String imageUrl, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          title,
          style: TextStyle(color: ColorConstants.darkBlueColor, fontSize: 18),
        )
      ],
    );
  }

  _buildCardView(
      {required int index,
      required String imageUrl,
      required String title,
      required String subtitle,
      required String title1,
      required String title2}) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          decoration: BoxDecoration(
            color: index == 2
                ? ColorConstants.whiteColor
                : ColorConstants.lightBlColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    decoration: BoxDecoration(
                      color: ColorConstants.bluColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      imageUrl,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          title2,
                          style: TextStyle(color: ColorConstants.GreyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: ColorConstants.GreyColor, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        if (index == 0 || index == 1)
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                  color: ColorConstants.orangColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                StringConstants.fourText,
                style: TextStyle(color: ColorConstants.whiteColor),
              ),
            ),
          ),
      ],
    );
  }
}
