import 'package:flutter/material.dart';
import 'package:weather_app/config/text_styles.dart';

class DetailsCard extends StatelessWidget {
  final Color topBorderColor;
  final String title;
  final String value;

  DetailsCard({
    this.topBorderColor,
    this.title,
    this.value,
  });

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
            title,
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: TextStyles.description,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
