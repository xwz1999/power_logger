import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  final Widget title;
  const TitleView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 26,color: Color(0xFF666666)),
        child: title,
      ),
    );
  }
}
