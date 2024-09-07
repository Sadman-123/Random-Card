import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'package:lolproj/pages/app.dart';
void main()
{
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => Main(), // Wrap your app
    ),
  );
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      home: App(),
    );
  }
}

