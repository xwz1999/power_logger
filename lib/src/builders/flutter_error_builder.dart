import 'package:flutter/material.dart';
import 'package:power_logger/src/view/flutter_error_view.dart';

class FlutterErrorBuilder extends StatelessWidget {
  final FlutterErrorDetails details;
  FlutterErrorBuilder({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.red.withOpacity(0.4),
      title: Text(details.exception.toString(),style: TextStyle(fontSize: 14,color: Colors.black),),
      trailing: Chip(label: Text('EXCEPTION',style: TextStyle(fontSize: 14,color: Colors.black),), backgroundColor: Colors.red),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlutterErrorView(details: details),
          ),
        );
      },
    );
  }
}
