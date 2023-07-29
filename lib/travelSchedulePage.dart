import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/UI/TravelRecommendButton.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:tripbuilder_demo/dataBase.dart';



class TravelSchedulePage extends StatelessWidget {
  TravelSchedulePage({Key? key}) : super(key: key);

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
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            width: _width,
            decoration: backgroundGradient,
            padding: EdgeInsets.all(paddingAll),
            child: Column(
              children: [

                // 이거 나중에 수정해야할수도
                SizedBox(height: 10.h,),

                TitleClass(title: "여행일정 추천", subTitle: "course recommendation"),

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
                              itemCount: destinationList.length,
                              itemBuilder: (_, index) {
                                return Column(
                                  children: [
                                    TravelRecommendButton(
                                      title: destinationList[index][0],
                                      subTitle: destinationList[index][1],
                                      imagePath: "seoul1.jpg",
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





