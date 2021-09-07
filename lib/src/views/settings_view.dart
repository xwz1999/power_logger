import 'package:flutter/material.dart';
import 'package:power_logger/power_logger.dart';
import 'package:power_logger/src/theme/custom_theme.dart';

class SettingsView extends StatefulWidget {
  final VoidCallback stateRefresh;
  SettingsView({Key? key, required this.stateRefresh}) : super(key: key);

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: Text('终端日志'),
          subtitle: Text(''),
          value: LoggerData.markLogger,
          onChanged: (state) {
            LoggerData.setLogger(state);
            setState(() {});
          },
        ),
        SwitchListTile(
          title: Text(CustomTheme.instance.follow ? '跟随系统' : 'Light'),
          subtitle: Text(''),
          value: CustomTheme.instance.follow,
          onChanged: (state) {
            CustomTheme.instance.setThemeData(state);
            widget.stateRefresh();
          },
        ),
      ],
    );
  }
}
