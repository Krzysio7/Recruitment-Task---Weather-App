// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "appName" : MessageLookupByLibrary.simpleMessage("Weather App"),
    "chooseCity" : MessageLookupByLibrary.simpleMessage("Choose city"),
    "cityNameRequired" : MessageLookupByLibrary.simpleMessage("Enter city name"),
    "conflictException" : MessageLookupByLibrary.simpleMessage("Error due to a conflict"),
    "connectionRequestTimeout" : MessageLookupByLibrary.simpleMessage("Connection request timeout"),
    "details" : MessageLookupByLibrary.simpleMessage("Details"),
    "enterValidCity" : MessageLookupByLibrary.simpleMessage("Enter valid city"),
    "errorFetchingData" : MessageLookupByLibrary.simpleMessage("Error, try to refresh"),
    "humidity" : MessageLookupByLibrary.simpleMessage("Wilgotność"),
    "internalServerError" : MessageLookupByLibrary.simpleMessage("Internal server error"),
    "invalidStatusCode" : MessageLookupByLibrary.simpleMessage("Invalid status code"),
    "lastSelected" : MessageLookupByLibrary.simpleMessage("Last selected"),
    "moreDetails" : MessageLookupByLibrary.simpleMessage("More Details"),
    "noInternetConnection" : MessageLookupByLibrary.simpleMessage("No internet connection"),
    "notFound" : MessageLookupByLibrary.simpleMessage("Not found"),
    "pressure" : MessageLookupByLibrary.simpleMessage("Pressure"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Refresh"),
    "requestCancelled" : MessageLookupByLibrary.simpleMessage("Request cancelled"),
    "sendTimeout" : MessageLookupByLibrary.simpleMessage("Send timeout in connection with API server"),
    "serviceUnavailable" : MessageLookupByLibrary.simpleMessage("Service unavailable"),
    "submit" : MessageLookupByLibrary.simpleMessage("Submit"),
    "today" : MessageLookupByLibrary.simpleMessage("Today"),
    "tomorrow" : MessageLookupByLibrary.simpleMessage("Tomorrow"),
    "unableToProcessError" : MessageLookupByLibrary.simpleMessage("Unable to process the data"),
    "unauthorizedRequest" : MessageLookupByLibrary.simpleMessage("Unauthorised request"),
    "unexpectedError" : MessageLookupByLibrary.simpleMessage("Unexpected error occurred"),
    "visibility" : MessageLookupByLibrary.simpleMessage("Visibility"),
    "windSpeed" : MessageLookupByLibrary.simpleMessage("Wind speed")
  };
}
