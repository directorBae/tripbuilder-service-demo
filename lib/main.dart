import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tripbuilder_demo/constant.dart';
import 'package:tripbuilder_demo/mainPage.dart';

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
  const MyApp({Key? key}) : super(key: key);

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
          home: MainPage(),
        );
      }
    );
  }
}




