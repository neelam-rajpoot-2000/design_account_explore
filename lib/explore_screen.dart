import 'package:design_account_explore/Constants/color_constants.dart';
import 'package:design_account_explore/Constants/icon_constants.dart';
import 'package:design_account_explore/Constants/string_constants.dart';
import 'package:design_account_explore/Constants/style.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _currentIndex=0;
  int activeIndex = 0;
  final imagesList = [
    'assets/img.jpg',
    'assets/hand.jpg',
    'assets/img.jpg',
    'assets/hand.jpg',
    'assets/boy.jpg',
    'assets/hand.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstants.buddeeText,
                          style: AppStyles.spanText,
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/lines.png",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 1,
                        aspectRatio: 1.1,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(
                                () {
                              activeIndex = index;
                            },
                          );
                        },
                      ),
                      items: imagesList
                          .map(
                            (item) => Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                      )
                          .toList(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      StringConstants.hobbiesText,
                      style: TextStyle(
                          color: ColorConstants.lightBlColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: ColorConstants.lightBlColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            StringConstants.SUText,
                            style: TextStyle(
                                color: ColorConstants.blackColor, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: ColorConstants.lightBlColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            StringConstants.badText,
                            style: TextStyle(
                                color: ColorConstants.blackColor, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.lightGreyColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.SUText,
                                style: TextStyle(
                                    color: ColorConstants.lightBlColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              StringConstants.noText,
                              style: AppStyles.richText,
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.map((urlOfItem) {
                        int index = imagesList.indexOf(urlOfItem);
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? ColorConstants.lightBlColor
                                : ColorConstants.lightGreyColor,
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(StringConstants.alText,
                        style: TextStyle(
                            color: ColorConstants.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.blackColor),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        StringConstants.badText,
                        style: AppStyles.richText,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.lightGreyColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(StringConstants.badText,
                              style: TextStyle(
                                  color: ColorConstants.blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          SizedBox(height: 10,),
                          Text(StringConstants.baText,
                            style: AppStyles.richText,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 96,
                left: 140,
                child: buildIndicator(),
              ),
              Positioned(
                top: 250,left: 35,
                child: Column(
                children: [
                  Text(
                    StringConstants.alexText,
                    style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700 ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        IconConstants.dir,
                        height: 25,
                        width: 28,
                        color: ColorConstants.whiteColor,
                      ),
                      Text(
                        StringConstants.kmText,
                        style: TextStyle(fontSize: 16,color: Colors.white ),
                      )
                    ],
                  ),
                ],
              ),),
              Positioned(
                top: 310,left: 90,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstants.redColor,
                      ),
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        IconConstants.can,
                        height: 20,
                        width: 20,
                        color: ColorConstants.whiteColor,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 100,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstants.greenColor,
                      ),
                      padding: EdgeInsets.all(18),
                      child: Image.asset(
                        IconConstants.yes,
                        height: 25,
                        width: 25,
                        color: ColorConstants.whiteColor,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
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

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesList.length,
        effect: JumpingDotEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: ColorConstants.blueGreyColor,
            dotColor: ColorConstants.lightGreyColor),
      );
}
