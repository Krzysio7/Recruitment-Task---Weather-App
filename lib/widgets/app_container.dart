import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/notifiers/busy_notifier.dart';
import 'package:weather_app/utils/dependency_injection.dart';

class AppContainer extends StatefulWidget {
  final Widget child;

  AppContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  void initState() {
    super.initState();
    sl.get<BusyNotifier>().addListener(_updateState);
  }

  void _updateState() => setState(() => {});

  @override
  Widget build(BuildContext context) {
    return PortalEntry(
      visible: sl.get<BusyNotifier>().isLoading,
      portal: Container(
        color: AppColors.white.withOpacity(0.4),
        child: const SpinKitWave(color: AppColors.blue, size: 50),
      ),
      child: Container(
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    sl.get<BusyNotifier>().removeListener(_updateState);
    super.dispose();
  }
}
