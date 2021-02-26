import 'package:flutter/material.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/database/models/city.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/utils/dependency_injection.dart';
import 'package:weather_app/utils/validators.dart';
import 'package:weather_app/widgets/app_button.dart';
import 'package:weather_app/widgets/outlined_text_from_field.dart';

class CityChooserBody extends StatelessWidget {
  final Function onCityPress;
  final Function onSubmit;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();

  CityChooserBody({
    this.onCityPress,
    this.onSubmit,
  });

  void _validate(BuildContext context) {
    if (!_formKey.currentState.validate()) {
      return;
    }
    onSubmit(context, _cityController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    final citiesList = sl.get<CitiesNotifier>().citiesList;
    return Form(
      key: _formKey,
      child: Center(
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
            AppButton(
              text: S.current.submit,
              onPressed: () => _validate(context),
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: citiesList.length > 0,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.lastSelected,
                      style: TextStyles.hintTextStyle,
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Scrollbar(
                        child: ListView.builder(
                            itemCount: citiesList.length,
                            itemBuilder: (context, index) {
                              final City city = citiesList[index];
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      city.name,
                                      style: TextStyles.listItemTitle,
                                    ),
                                    onTap: () =>
                                        onCityPress(context, city.name),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
