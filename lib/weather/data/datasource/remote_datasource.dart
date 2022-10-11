import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_clean_arch/core/utiles/constant.dart';
import 'package:weather_clean_arch/weather/data/models/weather_model.dart';


abstract class BaseRemoteDataSource{
 Future<WeatherModel?> getCurrentSource(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?>getCurrentSource(String cityName)async{
    try {
      var response = await Dio().get('${AppConstant.baseUrl}/weather?q=$cityName&appid=${AppConstant.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
