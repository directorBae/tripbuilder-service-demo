import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/BackFloatingButton.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/constant.dart';

class TravelKeywordPage extends StatelessWidget {
  const TravelKeywordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("여행지 키워드 분석"),
      //),

      body: Container(
        decoration: backgroundGradient,
        padding: EdgeInsets.all(paddingAll),
        child: Column(
          children: [
            TitleClass(title: "키워드 분석", subTitle: "keywords for ${city}"),

            SizedBox(height: 20.h,),

            Container(
              alignment: Alignment.center,
              child: Text("워드 클라우드\ncoming soon", textAlign: TextAlign.center,),
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
