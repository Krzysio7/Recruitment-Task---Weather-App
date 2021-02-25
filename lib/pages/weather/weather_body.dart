import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/pages/weather/details_card.dart';
import 'package:weather_app/widgets/app_button.dart';

class WeatherBody extends StatelessWidget {
  final String cityName;
  final int temp;
  final String weatherDescription;
  final String humidity;
  final String pressure;
  final String windSpeed;
  final String visibility;

  WeatherBody({
    @required this.cityName,
    @required this.temp,
    @required this.weatherDescription,
    @required this.humidity,
    @required this.pressure,
    @required this.windSpeed,
    @required this.visibility,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MainWeatherInfo(
                cityName: cityName,
                temp: temp,
                weatherDescription: weatherDescription,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              S.current.details,
              style: TextStyles.description,
            ),
            WeatherDetails(
              humidity: humidity,
              pressure: pressure,
              windSpeed: windSpeed,
              visibility: visibility,
            ),
            const SizedBox(height: 40),
            Center(
              child: AppButton(
                width: 200,
                text: S.current.moreDetails,
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainWeatherInfo extends StatelessWidget {
  final String cityName;
  final int temp;
  final String weatherDescription;

  MainWeatherInfo({this.cityName, this.temp, this.weatherDescription});

  TextStyle _buildTempStyle() {
    if (temp == null) {
      return TextStyles.temperatureHeader;
    }
    if (temp < 10) {
      return TextStyles.temperatureHeader.copyWith(color: AppColors.blue);
    }
    if (temp > 10 && temp < 20) {
      return TextStyles.temperatureHeader;
    }
    if (temp > 20) {
      return TextStyles.temperatureHeader.copyWith(color: AppColors.lipstick);
    }

    return TextStyles.temperatureHeader;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$cityName',
          style: TextStyles.cityNameHeader,
        ),
        Text(
          temp == null ? '' : '$temp°',
          style: _buildTempStyle(),
        ),
        Text(
          '$weatherDescription',
          style: TextStyles.hintTextStyle,
        ),
      ],
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String humidity;
  final String pressure;
  final String windSpeed;
  final String visibility;

  WeatherDetails(
      {this.humidity, this.pressure, this.windSpeed, this.visibility});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: DetailsCard(
                topBorderColor: AppColors.black,
                title: S.current.humidity,
                value: '$humidity %',
              ),
            ),
            Expanded(
              child: DetailsCard(
                topBorderColor: AppColors.black,
                title: S.current.pressure,
                value: '$pressure hpa',
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: DetailsCard(
                topBorderColor: AppColors.black,
                title: S.current.windSpeed,
                value: '$windSpeed km/h',
              ),
            ),
            Expanded(
              child: DetailsCard(
                topBorderColor: AppColors.black,
                title: S.current.visibility,
                value: '$visibility km',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
