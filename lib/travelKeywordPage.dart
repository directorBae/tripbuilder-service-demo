import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripbuilder_demo/Data/wordCloudData.dart';
import 'package:tripbuilder_demo/UI/BackFloatingButton.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:word_cloud/word_cloud.dart';

class TravelKeywordPage extends StatelessWidget {
  const TravelKeywordPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    WordCloudData mydata = WordCloudData(data: wordcloudData);

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

                /*Container(
                  constraints: BoxConstraints(
                    maxWidth: maxWidth-70
                  ),
                  alignment: Alignment.center,
                  child: Text("워드 클라우드\ncoming soon", textAlign: TextAlign.center,),
                  color: Colors.white,
                  width: 350.w, height: 350.h,
                ),*/

                SizedBox(height: 20,),

                Container(
                  width: maxWidth-60>350.w ? 350.w : maxWidth-60,
                  height: 600.h,
                  //color: Colors.white54,
                  child: WordCloudView(
                    data: mydata,
                    mapwidth: maxWidth-60>350.w ? 350.w : maxWidth-60,
                    mapheight: 600.h,
                    fontWeight: FontWeight.bold,
                    colorlist: [Colors.white, Colors.white, Colors.white, Colors.white70, Colors.white54],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: const BackFloatingButton(),

    );
  }
}
