import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/pages/weather/details_card.dart';
import 'package:weather_app/widgets/app_button.dart';

class WeatherBody extends StatelessWidget {
  final String cityName;
  final String temp;
  final String weatherDescription;
  final String humidity;
  final String pressure;
  final String windSpeed;
  final String visibility;

  WeatherBody(
      {@required this.cityName,
      @required this.temp,
      @required this.weatherDescription,
      @required this.humidity,
      @required this.pressure,
      @required this.windSpeed,
      @required this.visibility});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$cityName',
                  style: TextStyles.cityNameHeader,
                ),
                Text(
                  '$temp°',
                  style: TextStyles.temperatureHeader,
                ),
                Text(
                  '$weatherDescription',
                  style: TextStyles.hintTextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            S.current.details,
            style: TextStyles.description,
          ),
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
          Spacer(),
          Center(
            child: AppButton(
              width: 200,
              text: S.current.moreDetails,
              onPressed: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
