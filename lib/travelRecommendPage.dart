import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/UI/TravelRecommendButton.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:tripbuilder_demo/dataBase.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/UI/TravelRecommendButton.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:tripbuilder_demo/dataBase.dart';



class TravelRecommendPage extends StatelessWidget {
  TravelRecommendPage({Key? key}) : super(key: key);

  late ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    // 현재 높이를 구해옴.
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: _width,
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            decoration: backgroundGradient,
            padding: EdgeInsets.all(paddingAll),
            child: Column(
              children: [

                SizedBox(height: 10.h,),

                TitleClass(title: "여행지 추천", subTitle: "travel recommendation"),

                SizedBox(height: 25,),

                // 이거 수치 다시 계산 (이후 통일해서 리소스 분리시켜놓기)
                Container(
                  width: _width-30, height: _height-190,
                  // scroll bar
                  child: Scrollbar(
                    controller: _scrollController,
                    thickness: 5,
                    radius: Radius.circular(10),
                    //scrollbarOrientation: ScrollbarOrientation.right,
                    child: NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (OverscrollIndicatorNotification overScroll) {
                        overScroll.disallowGlow();
                        return false;
                      },

                      // listview와 스크롤 화면
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: destinationMapRandom[random_i].length,
                              itemBuilder: (_, index) {
                                return Column(
                                  children: [
                                    TravelRecommendButton(
                                      title: destinationMapRandom[random_i]["$index"][0],
                                      subTitle: destinationMapRandom[random_i]["$index"][1],
                                      imagePath: destinationMapRandom[random_i]["$index"][1]=="음식점"
                                          ? "restaurant1.jpg"
                                          : (destinationMapRandom[random_i]["$index"][1]=="카페")
                                          ? "cafe2.jpg" : "seoul1.jpg",
                                      // imagePath: destinationList[index][1]+".jpg",
                                    ),
                                    SizedBox(height: 30.h,)
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}









/*
class TravelRecommendPage extends StatelessWidget {
  TravelRecommendPage({Key? key}) : super(key: key);

  late ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    // 현재 높이를 구해옴.
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: _width,
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            decoration: backgroundGradient,
            padding: EdgeInsets.all(paddingAll),
            child: Column(
            children: [

              SizedBox(height: 10.h,),

              TitleClass(title: "여행지 추천", subTitle: "travel recommendation"),

              SizedBox(height: 25,),

              // 이거 수치 다시 계산 (이후 통일해서 리소스 분리시켜놓기)
              Container(
                width: _width-30, height: _height-190,
                // scroll bar
                child: Scrollbar(
                  controller: _scrollController,
                  thickness: 5,
                  radius: Radius.circular(10),
                  //scrollbarOrientation: ScrollbarOrientation.right,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (OverscrollIndicatorNotification overScroll) {
                    overScroll.disallowGlow();
                    return false;
                  },

                    // listview와 스크롤 화면
                  child: SingleChildScrollView(
                  controller: _scrollController,
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: destinationMap.length,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                TravelRecommendButton(
                                  title: destinationMap["$index"][0],
                                  subTitle: destinationMap["$index"][1],
                                  imagePath: destinationMap["$index"][1]=="음식점"
                                      ? "restaurant1.jpg"
                                          : (destinationMap["$index"][1]=="카페")
                                              ? "cafe2.jpg" : "seoul1.jpg",
                                  // imagePath: destinationList[index][1]+".jpg",
                                ),
                                SizedBox(height: 30.h,)
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                 ),
              ),
              ),
            ],
          ),
    ),
        ],
      ),
    );
  }
}*/





