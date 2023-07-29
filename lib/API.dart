import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:tripbuilder_demo/ServerInfo.dart';

class Server {
  Dio dio = Dio();

  GetData() async {
    try {
      var response = await dio.get(serverInfo);
      // await dio.post("${serverInfo}/query"//"http://127.0.0.1:5000/query" //"http://10.0.2.2:5000/query"
      //     , data:
      // {
      //   'Query': "333",
      // });

      if (response.statusCode == 200) {
        return response.data;
      } else {
        print("에러 발생");
        return null;
      }
    } on Exception catch (e) {
      print("에러발생 : ${e}");
      return null;
    }

  }
}
