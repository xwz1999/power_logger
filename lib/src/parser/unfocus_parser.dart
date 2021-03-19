import 'package:flutter/material.dart';

/// UnfocusParser
class UnfocusParser extends StatelessWidget {
  final dynamic data;
  const UnfocusParser({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: Text(data.runtimeType.toString())),
              body: Text(data.toString()),
            ),
          ),
        ),
        title: Text(
          data.toString(),
          maxLines: 1,
        ),
        trailing: Chip(
          label: Text(data.runtimeType.toString()),
        ),
      ),
    );
  }
}
