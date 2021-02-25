// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Weather App`
  String get appName {
    return Intl.message(
      'Weather App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Choose city`
  String get chooseCity {
    return Intl.message(
      'Choose city',
      name: 'chooseCity',
      desc: '',
      args: [],
    );
  }

  /// `Enter city name`
  String get cityNameRequired {
    return Intl.message(
      'Enter city name',
      name: 'cityNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid city`
  String get enterValidCity {
    return Intl.message(
      'Enter valid city',
      name: 'enterValidCity',
      desc: '',
      args: [],
    );
  }

  /// `Last selected`
  String get lastSelected {
    return Intl.message(
      'Last selected',
      name: 'lastSelected',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message(
      'Tomorrow',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Wilgotność`
  String get humidity {
    return Intl.message(
      'Wilgotność',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `More Details`
  String get moreDetails {
    return Intl.message(
      'More Details',
      name: 'moreDetails',
      desc: '',
      args: [],
    );
  }

  /// `Request cancelled`
  String get requestCancelled {
    return Intl.message(
      'Request cancelled',
      name: 'requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connection request timeout`
  String get connectionRequestTimeout {
    return Intl.message(
      'Connection request timeout',
      name: 'connectionRequestTimeout',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout in connection with API server`
  String get sendTimeout {
    return Intl.message(
      'Send timeout in connection with API server',
      name: 'sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorised request`
  String get unauthorizedRequest {
    return Intl.message(
      'Unauthorised request',
      name: 'unauthorizedRequest',
      desc: '',
      args: [],
    );
  }

  /// `Not found`
  String get notFound {
    return Intl.message(
      'Not found',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Error due to a conflict`
  String get conflictException {
    return Intl.message(
      'Error due to a conflict',
      name: 'conflictException',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error`
  String get internalServerError {
    return Intl.message(
      'Internal server error',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Service unavailable`
  String get serviceUnavailable {
    return Intl.message(
      'Service unavailable',
      name: 'serviceUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Invalid status code`
  String get invalidStatusCode {
    return Intl.message(
      'Invalid status code',
      name: 'invalidStatusCode',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get unexpectedError {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Unable to process the data`
  String get unableToProcessError {
    return Intl.message(
      'Unable to process the data',
      name: 'unableToProcessError',
      desc: '',
      args: [],
    );
  }

  /// `Error, try to refresh`
  String get errorFetchingData {
    return Intl.message(
      'Error, try to refresh',
      name: 'errorFetchingData',
      desc: '',
      args: [],
    );
  }

  /// `Pressure`
  String get pressure {
    return Intl.message(
      'Pressure',
      name: 'pressure',
      desc: '',
      args: [],
    );
  }

  /// `Wind speed`
  String get windSpeed {
    return Intl.message(
      'Wind speed',
      name: 'windSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Visibility`
  String get visibility {
    return Intl.message(
      'Visibility',
      name: 'visibility',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}