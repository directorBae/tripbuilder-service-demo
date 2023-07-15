import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tripbuilder_demo/travelPropensityPage.dart';
import 'package:tripbuilder_demo/travelKeywordPage.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/travelRecommendPage.dart';
import 'package:tripbuilder_demo/travelSchedulePage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text('TripBuilder'),
      // ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h, bottom: 20.h),
        child: Column(
          children: [


            TitleClass(title: "부산으로", subTitle: "to Busan"),

            SizedBox(height: 10.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(title: "여행 성향\n테스트", icon: Icons.beach_access,
                  onPressed: (){
                    Get.to(() => TravelPropensityPage());
                  },
                ),
                MainButton(title: "여행지\n키워드 분석", icon: Icons.flight,
                  onPressed: (){
                    Get.to(() => TravelKeywordPage());
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(title: "여행지\n추천 서비스", icon: Icons.question_answer_rounded,
                  onPressed: (){
                    Get.to(() => TravelRecommendPage());
                  },
                ),
                MainButton(title: "여행일정\n추천 서비스", icon: Icons.calendar_month,
                  onPressed: (){
                    Get.to(() => TravelSchedulePage());
                  },
                ),
              ],
            ),

            SizedBox(height: 10.h,),

            // Text(
            //   'You have pushed the button this many times:',
            // ),


            // get X sample
            // Obx(
            //       () => Text(
            //     '${controller.counter.value}',
            //     style: Theme.of(context).textTheme.headlineMedium,
            //   ),
            // ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: controller.incrementCounter,
            //   tooltip: 'Increment',
            //   child: const Icon(Icons.add),
            // ),

            SizedBox(height: 15.h,),

            // 빈 흰 상자
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){

                },

                // text button의 default padding값을 없애주는 코드
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  // 반응형으로 바꾸기
                  width: 350.w, height: 170.h,
                  padding: EdgeInsets.only(left:15.sp, right:15.sp, top:15.sp, ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    //borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5.0,
                        offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  Column(
                    children: [

                    ],
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






// MainPage에 있는 버튼
class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon ;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.w, right: 13.w, top: 20.h, bottom: 20.h),
      child: TextButton(
        onPressed: onPressed,

        // text button의 default padding값을 없애주는 코드
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          // 반응형으로 바꾸기
          width: 160.w, height: 170.h,
          padding: EdgeInsets.only(left:15.sp, right:15.sp, top:15.sp, ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            //borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5.0,
                  offset: Offset(5, 5), // changes position of shadow
                ),
              ],
          ),
          child:  Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(title,
                  style: TextStyle(fontSize: 22.sp, fontWeight:FontWeight.bold, fontFamily: 'SpoqaHanSansNeo',  color: Colors.black, ), textAlign: TextAlign.left, ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Icon(icon, size: 55.sp, color: Colors.black,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
