import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData? icon;
  const InfoTile({
    Key? key,
    required this.title,
    required this.subTitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 14,color: Color(0xff333333)),),
      subtitle: Text(subTitle,style: TextStyle(fontSize: 14,color: Color(0xff666666))),
      onLongPress: () async {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        Clipboard.setData(ClipboardData(text: subTitle));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('已复制'),
          action: SnackBarAction(
            label: '确定',
            onPressed: () =>
                ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          ),
        ));
      },
    );
  }
}
