import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:power_logger/power_logger.dart';
import 'package:power_logger/src/builders/flutter_error_builder.dart';


///LoggerDataParser
class LoggerDataParser {
  static Widget builder(LoggerInnerData data) {
    if (data.rawData is DioError)
      return DioErrorBuilder(
        data: data.rawData,
        date: data.date,
      );
    if (data.rawData is Response)
      return DioResponseBuilder(
        data: data.rawData,
        date: data.date,
      );
    if (data.rawData is FlutterErrorDetails)
      return FlutterErrorBuilder(details: data.rawData);
    return UnfocusParser(data: data.rawData, tag: data.tag);
  }
}
