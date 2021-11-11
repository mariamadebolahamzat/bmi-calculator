import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key, this.icon, this.text
  }) : super(key: key);

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text!,
            style: TextStyle(
                color: Color(0xFF8D8E98), fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}