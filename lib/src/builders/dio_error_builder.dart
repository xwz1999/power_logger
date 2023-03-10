import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:power_logger/src/view/dio_error_view.dart';

///Dio Error builder
class DioErrorBuilder extends StatelessWidget {
  final DioError data;
  final DateTime date;

  DioErrorBuilder({Key? key, required this.data, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.red.withOpacity(0.2),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DioErrorView(data: data),
          ),
        );
      },
      title: Text(data.requestOptions.path),
      subtitle: Text('${data.message}\n$date'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Chip(
            backgroundColor: Colors.blue.withOpacity(0.4),
            label: Text(data.requestOptions.method),
          ),
        ],
      ),
    );
  }
}
