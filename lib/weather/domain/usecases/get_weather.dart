import 'package:weather_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_clean_arch/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountry{
  final BaseWeatherRepository repository;
  GetWeatherByCountry(this.repository);

 Future<Weather> execute(String cityName)async{
  return await repository.getWeatherByCityName(cityName);
  }
}