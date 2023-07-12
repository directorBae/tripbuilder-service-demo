import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tripbuilder_demo/constant.dart';

void main() {
  runApp(const MyApp());
}

class incrementController extends GetxController {
  Rx<int> counter = 0.obs;

  void incrementCounter() {
    counter.value++;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(incrementController());

    return ScreenUtilInit(
      designSize: Size(412, 892),
      builder: (context, child){
        return GetMaterialApp(
          title: 'TripBuilder',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColor.backgroundColor,
          ),
          // builder: (context, widget) {
          //   return MediaQuery(
          //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          //     child: widget!,
          //   );
          // },
          home: Scaffold(
            // appBar: AppBar(
            //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            //   title: const Text('TripBuilder'),
            // ),
            body: Column(
                children: <Widget>[

                  Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("부산으로", style: TextStyle(color: Colors.white, fontSize: 30.sp, fontWeight: FontWeight.bold),),
                            Text("to busan", style: TextStyle(color: Colors.white, fontSize: 15.sp),),
                          ],
                        ),



                        Row(
                          children: [
                            MainButton(title: "여행 성향\n테스트"),
                            MainButton(title: "여행지\n키워드 분석"),
                          ],
                        ),

                        Row(
                          children: [
                            MainButton(title: "여행지\n추천 서비스"),
                            MainButton(title: "여행일정\n추천 서비스"),
                          ],
                        ),
                      ],
                    ),


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



                ],
              ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: controller.incrementCounter,
            //   tooltip: 'Increment',
            //   child: const Icon(Icons.add),
            // ),
          ),
        );
      }
    );
  }
}


// MainPage에 있는 버튼
class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: TextButton(
        onPressed: (){

        },
        child: Container(
          // 반응형으로 바꾸기
          width: 150.w, height: 120.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15))
            //borderRadius: BorderRadius.circular(4),
          ),
          child:  Text(title,
            style: TextStyle(fontSize: 15, fontFamily: 'SpoqaHanSansNeo',  color: Colors.black, ), textAlign: TextAlign.left, ),
        ),

        // text button의 default padding값을 없애주는 코드
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}


