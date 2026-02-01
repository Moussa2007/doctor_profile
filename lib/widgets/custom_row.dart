import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.icon, required this.txtcomment});

  final dynamic icon;
  final String? txtcomment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(child: icon),
        SizedBox(width: 10),
        Text('$txtcomment', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
