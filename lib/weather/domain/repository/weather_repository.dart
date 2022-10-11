import 'package:weather_clean_arch/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{

 Future<Weather> getWeatherByCityName(String cityName);

}