import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:power_logger/src/view/dio_response_view.dart';

/// Dio Response Builder
class DioResponseBuilder extends StatelessWidget {
  final Response data;
  final DateTime date;
  DioResponseBuilder({Key? key, required this.data, required this.date})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.green.withOpacity(0.2),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DioResponseView(data: data),
        ),
      ),
      title: Text(data.requestOptions.path,style: TextStyle(fontSize: 16,color: Color(0xFF333333)),),
      subtitle: Text(date.toString(),style: TextStyle(fontSize: 14,color: Color(0xFF666666)),),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Chip(
            backgroundColor: Colors.blue.withOpacity(0.8),
            label: Text(data.requestOptions.method,style: TextStyle(fontSize: 14,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
