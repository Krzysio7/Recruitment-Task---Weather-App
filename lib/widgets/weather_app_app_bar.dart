import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';

class WeatherAppAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  _WeatherAppAppBarState createState() => _WeatherAppAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _WeatherAppAppBarState extends State<WeatherAppAppBar> {
  final Widget _hamburgerIcon = const Icon(
    Icons.menu,
    color: AppColors.blue,
    size: 32,
  );

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarButton(
                        icon: _hamburgerIcon,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                      AppBarButton(
                        icon: _searchIcon,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
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
