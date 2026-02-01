import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios, 
          size: 30, 
          color: Colors.white,
          ),
        title: Text(
          '$title',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}