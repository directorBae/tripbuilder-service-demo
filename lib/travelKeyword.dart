import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/BackFloatingButton.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';

class TravelKeyword extends StatelessWidget {
  const TravelKeyword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("여행지 키워드 분석"),
      //),

      body: Container(
        padding: EdgeInsets.only(left: 20.w, top: 25.h,),
        child: Column(
          children: [
            TitleClass(title: "키워드 분석", subTitle: "keywords for Busan"),

            SizedBox(height: 20.h,),

            Container(
              alignment: Alignment.center,
              child: Text("워드 클라우드 ~~", textAlign: TextAlign.center,),
              color: Colors.white,
              width: 350.w, height: 350.h,
            )
          ],
        ),
      ),

      // 이거 빼도 될 것 같고, 아니면 AppBar에 간지나게 넣어도 되고
      floatingActionButton: const BackFloatingButton(),

    );
  }
}
