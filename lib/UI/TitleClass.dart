import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 맨 위에 있는 제목과 부제목
class TitleClass extends StatelessWidget {
  TitleClass({
    Key? key,
    required this.title, // 제목
    required this.subTitle, // 부제목
  }) : super(key: key);

  String title;
  String subTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, top: 25.h,),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(title, style: TextStyle(color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.bold),)),
          Text(subTitle, style: TextStyle(color: Colors.white, fontSize: 25.sp),),
        ],
      ),
    );
  }
}
