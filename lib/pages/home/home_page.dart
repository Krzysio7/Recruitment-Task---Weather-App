import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather/today_weather_tab.dart';
import 'package:weather_app/pages/weather/tomorrow_weather_tab.dart';
import 'package:weather_app/widgets/top_navigation_bar.dart';
import 'package:weather_app/widgets/weather_app_app_bar.dart';

class HomePage extends StatefulWidget {
  static resetTo(
    BuildContext context,
  ) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: WeatherAppAppBar(),
      body: Column(
        children: [
          TopNavigationBar(
            tabController: _tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                TodayWeatherTab(),
                TomorrowWeatherTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
