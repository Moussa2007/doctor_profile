import 'package:flutter/material.dart';

class CustomChoice extends StatelessWidget {
  const CustomChoice({super.key, required this.txt, required this.ontap});

  final String? txt;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 166, 196, 247),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call, color: Colors.indigo),
              Text(textAlign: TextAlign.left, '$txt'),
            ],
          ),
        ),
      ),
    );
  }
}
