import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/BackFloatingButton.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';

class TravelPropensityPage extends StatelessWidget {
  const TravelPropensityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("여행 성향 테스트"),
      //),
      body: Padding(
        padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 20.h, bottom: 20.h),
        child: Column(
          children: [
            TitleClass(title: "여행 성향 테스트", subTitle: "Travel Propensity Page")

          ],
        ),
      ),

      floatingActionButton: const BackFloatingButton(),
    );
  }
}
