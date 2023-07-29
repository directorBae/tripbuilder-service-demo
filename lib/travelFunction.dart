import 'dart:convert';
import 'package:flutter/services.dart';


void travelFunction() async {
  // json 파일 불러오기
  String DemoDataJson = await rootBundle.loadString('Data/DemoData.json');
  // final jsonResponse = json.decode(jsonString);

  // print(jsonResponse);
}