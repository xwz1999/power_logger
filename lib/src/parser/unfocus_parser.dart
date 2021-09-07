import 'package:flutter/material.dart';
import 'package:power_logger/src/theme/custom_theme.dart';

/// UnfocusParser
class UnfocusParser extends StatelessWidget {
  final dynamic data;
  final String? tag;

  const UnfocusParser({Key? key, required this.data, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black12
          : Colors.white10,
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Theme(
              data: CustomTheme.instance.customTheme ?? Theme.of(context),
              child: Scaffold(
                appBar: AppBar(title: Text(data.runtimeType.toString())),
                body: Text(data.toString()),
              ),
            ),
          ),
        ),
        title: Text(
          data.toString(),
          maxLines: 1,
        ),
        trailing: Chip(
          label: Text(tag ?? data.runtimeType.toString()),
        ),
      ),
    );
  }
}
