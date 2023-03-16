import 'package:flutter/material.dart';
import 'package:modernlogintute/components/DrawerSide.dart';
import 'package:modernlogintute/pages/home_page.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
    );
  }
}
