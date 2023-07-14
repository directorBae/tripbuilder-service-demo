import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripbuilder_demo/constant.dart';

class BackFloatingButton extends StatelessWidget {
  const BackFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        Get.back();
      },
      tooltip: '뒤로가기',
      // 둥글게 하는 코드 (수정 요함)
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100))
      ),

      backgroundColor: AppColor.mainColor,
      child: const Icon(Icons.arrow_back_sharp),
    );
  }
}
