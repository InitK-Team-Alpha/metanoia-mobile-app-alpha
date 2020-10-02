import 'package:dio/dio.dart';

class QutoesService {
  static Future<String> getQutoeImageURL() async {
    var dio = Dio();

    var response = await dio.get('http://localhost:3000/dailyqutoe');

    return response.data['media'];
  }
}
