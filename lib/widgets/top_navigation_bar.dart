import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/generated/l10n.dart';

class TopNavigationBar extends StatelessWidget {
  final TabController tabController;

  TopNavigationBar({this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.transparent,
      ),
      child: TabBar(
        controller: tabController,
        indicator: BoxDecoration(
          color: AppColors.lightBlue,
        ),
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.greyish,
        tabs: [
          Tab(
            text: S.current.today,
          ),
          Tab(
            text: S.current.tomorrow,
          ),
        ],
      ),
    );
  }
}
