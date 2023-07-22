import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TravelRecommendButton extends StatelessWidget {
  TravelRecommendButton({
    Key? key,
    this.onPressed,
    required this.title,
    required this.subTitle,
    this.imagePath,
  }) : super(key: key);

  final onPressed;
  final String title;
  final String subTitle;
  final String? imagePath;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      // text button의 default padding값을 없애주는 코드
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        // 반응형으로 바꾸기
        width: 350.w, height: 170.h,
        padding: EdgeInsets.only(left:15.sp, right:15.sp, ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(15)),
          // 배경 이미지
          image: imagePath != null ? // 이미지 없을 경우 흰 배경
          DecorationImage(
            image: ExactAssetImage("assets/images/"+imagePath!),
            fit: BoxFit.cover,
            // color filter : 검정색으로 조금 덮기
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.25), BlendMode.srcATop),
          ) : null ,
          // 그림자
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0, blurRadius: 5.0,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.end,

          // 제목과 부제목
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.bottomRight,
              child: Text(title,
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold, fontFamily: 'SpoqaHanSansNeo',  color: Colors.white, ), textAlign: TextAlign.left, ),
            ),

            Container(
              padding: EdgeInsets.only(right:10.w, bottom: 18.h),
              alignment: Alignment.bottomRight,
              child: Text(subTitle,
                style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold, fontFamily: 'SpoqaHanSansNeo',  color: Colors.white, ), textAlign: TextAlign.left, ),
            ),
          ],
        ),
      ),
    );
  }
}