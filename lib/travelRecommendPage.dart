import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/UI/TravelRecommendButton.dart';
import 'package:tripbuilder_demo/dataBase.dart';



class TravelRecommendPage extends StatelessWidget {
  TravelRecommendPage({Key? key}) : super(key: key);

  late ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 20.h, bottom: 20.h),
        child: Column(
        children: [
          TitleClass(title: "여행지 추천", subTitle: "travel recommendation"),

          SizedBox(height: 25.h,),

          Container(
            width: 500.w, height: 675.h,
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
                              imagePath: destinationList[index][1]+".jpg",
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
    );
  }
}





