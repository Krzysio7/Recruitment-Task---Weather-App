import 'package:flutter/material.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/generated/l10n.dart';

class DetailsCard extends StatelessWidget {
  final Color topBorderColor;

  DetailsCard({this.topBorderColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 5,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.0),
                  topLeft: Radius.circular(4.0),
                ),
              ),
              color: topBorderColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            S.current.humidity,
          ),
          const SizedBox(height: 10),
          Text(
            '22%',
            style: TextStyles.description,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
