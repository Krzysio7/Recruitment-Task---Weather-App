import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/pages/weather/details_card.dart';
import 'package:weather_app/widgets/app_button.dart';

class TomorrowWeatherTab extends StatelessWidget {
  final String passedCity;

  TomorrowWeatherTab({this.passedCity});

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
                  'Dubai',
                  style: TextStyles.cityNameHeader,
                ),
                Text(
                  '35°',
                  style: TextStyles.temperatureHeader,
                ),
                Text(
                  'sunny sunny',
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
                ),
              ),
              Expanded(
                child: DetailsCard(
                  topBorderColor: AppColors.black,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: DetailsCard(
                  topBorderColor: AppColors.black,
                ),
              ),
              Expanded(
                child: DetailsCard(
                  topBorderColor: AppColors.black,
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
