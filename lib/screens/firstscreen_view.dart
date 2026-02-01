import 'package:firstapp/widgets/custom_appbar.dart';
import 'package:firstapp/widgets/firstscreen_body.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: CustomAppBar(title: "Doctor's Profile"),

      body: FirstScreenBody(),
    );
  }
}
