import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolproj/controller/boss_controller.dart';
import 'package:lolproj/pages/app.dart';
void main()
{
  Get.put(BossController());
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

