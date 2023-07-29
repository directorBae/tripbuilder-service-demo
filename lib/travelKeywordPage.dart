import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/UI/BackFloatingButton.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/constant.dart';

class TravelKeywordPage extends StatelessWidget {
  const TravelKeywordPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      //appBar: AppBar(
      //  title: Text("여행지 키워드 분석"),
      //),

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
                TitleClass(title: "키워드 분석", subTitle: "keywords for ${city}"),

                SizedBox(height: 20.h,),

                Container(
                  constraints: BoxConstraints(
                    maxWidth: maxWidth-70
                  ),
                  alignment: Alignment.center,
                  child: Text("워드 클라우드\ncoming soon", textAlign: TextAlign.center,),
                  color: Colors.white,
                  width: 350.w, height: 350.h,
                )
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: const BackFloatingButton(),

    );
  }
}
