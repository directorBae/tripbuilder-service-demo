import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Column(
                children: [
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


              Text(
                'You have pushed the button this many times:',
              ),
              Obx(
                () => Text(
                  '${controller.counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
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
  }) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: (){

        },
        child: Container(
          // 반응형으로 바꾸기
          width: 200,
          height: 100,
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


