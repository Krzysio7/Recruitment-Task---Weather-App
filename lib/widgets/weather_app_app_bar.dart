import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';

import '../pages/city_chooser_page/choose_city_dialog.dart';

class WeatherAppAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  _WeatherAppAppBarState createState() => _WeatherAppAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _WeatherAppAppBarState extends State<WeatherAppAppBar> {
  final Widget _searchIcon = const Icon(
    Icons.search,
    color: AppColors.blue,
    size: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppBarButton(
                        icon: _searchIcon,
                        onPressed: () {
                          ChooseCityDialog.show(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(height: 1, color: AppColors.divider),
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  const AppBarButton({
    Key key,
    @required this.icon,
    this.onPressed,
  })  : assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: icon,
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(),
      shape: const CircleBorder(),
    );
  }
}
