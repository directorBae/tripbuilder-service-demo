import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:tripbuilder_demo/dataBase.dart';
import 'package:tripbuilder_demo/travelFunction.dart';
import 'package:tripbuilder_demo/travelPropensityPage.dart';
import 'package:tripbuilder_demo/travelKeywordPage.dart';
import 'package:tripbuilder_demo/UI/TitleClass.dart';
import 'package:tripbuilder_demo/travelRecommendPage.dart';
import 'package:tripbuilder_demo/travelSchedulePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'API.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:math';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
    
    // 랜덤으로 결과 하나를 뽑음
    getRandomInt();

    // getDestinations();
  }

  getRandomInt() {
    Random random = Random();
    random_i = random.nextInt(destinationMapRandom.length);
    print(random_i);
  }

  getDestinations() async {
    print("함수가 실행됨. ");
    Server _Service =  Server();
    var Data = await _Service.GetData();
    if (Data != null){
      print(Data);
      // 이거 나중에 지워야함.
      // Fluttertoast.showToast(msg: "정산이 완료되었습니다 !");
      destinationMap = Data;
    }
  }

  @override
  Widget build(BuildContext context) {


    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text('TripBuilder'),
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            width: _width,
            child: SingleChildScrollView(
              child: Container(
                height: _height,
                decoration: backgroundGradient,
                padding: EdgeInsets.all(paddingAll),
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),

                    // TitleClass(title: "부산으로", subTitle: "to Busan"),
                    TitleClass(title: "서울로", subTitle: "to ${city}"),

                    SizedBox(height: 20.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MainButton(title: "여행 성향\n테스트", icon: Icons.beach_access,
                          onPressed: () async {
                            getRandomInt();
                          // getDestinations();

                            final url = Uri.parse('https://stti.tripbuilder.co.kr/');
                            if (await canLaunchUrl(url)) {
                              launchUrl(url, mode: LaunchMode.externalApplication);
                            }
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

                    // 기능 테스트 버튼
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

                  /*
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(

                        onPressed: () async {

                          var Data = await _Service1.GetData();
                          if (Data != null){
                            print(Data);
                            destinationMap = Data;
                          }
                          //travelFunction();

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
                    ),*/

                  ],
                ),
              ),
            ),
          ),
        ],
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
    return Container(
      constraints: BoxConstraints(
        // 나중에 계산해서 더 정확하게 만들어야함.
        maxWidth: maxWidth/2 - 30,
        maxHeight: maxWidth/2 - 30,
      ),
      padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
      child: TextButton(
        onPressed: onPressed,

        // text button의 default padding값을 없애주는 코드
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          // 반응형으로 바꾸기
          width: 155.w, height: 150.w,
          padding: EdgeInsets.only(left:17, right:17, top:17, ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xFF6BBEFF),
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
                child: AutoSizeText(title,
                  maxFontSize: 25,
                  style: TextStyle(fontSize: 20.sp, fontWeight:FontWeight.bold, fontFamily: 'SpoqaHanSansNeo',  color: Colors.black, ), textAlign: TextAlign.left, ),
              ),

              SizedBox(height: 10,),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 40.sp, height: 40.sp,
                  constraints: BoxConstraints(
                    maxWidth: 50, maxHeight: 50
                  ),
                  // 부모 크기에 맞게
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double iconSize = constraints.biggest.width;
                      return Icon(icon, size: iconSize, color: Colors.black,
                      );
                    },
                  ),
                ),
              ),

              //   Container(
              //     width: 40.sp, height: 40.sp,
              //       child: Icon(icon, color: Colors.black,)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
