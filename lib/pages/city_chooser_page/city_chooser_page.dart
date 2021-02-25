import 'package:flutter/material.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/database/cities_table.dart';
import 'package:weather_app/database/models/city.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/pages/home/home_page.dart';
import 'package:weather_app/utils/validators.dart';
import 'package:weather_app/widgets/app_button.dart';
import 'package:weather_app/widgets/outlined_text_from_field.dart';

class CityChooserPage extends StatelessWidget {
  static resetTo(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => CityChooserPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();

  void _goToWeatherPage(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    CitiesTable.insertAll([City(name: _cityController.text)]);

    HomePage.resetTo(context, _cityController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedTextFormField(
                  label: S.current.chooseCity,
                  validator: Validators.cityValidator,
                  textEditingController: _cityController,
                ),
                const SizedBox(height: 20),
                Visibility(
                  visible: true,
                  child: Column(
                    children: [
                      Text(
                        S.current.lastSelected,
                        style: TextStyles.hintTextStyle,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                AppButton(
                  text: S.current.submit,
                  onPressed: () => _goToWeatherPage(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
